import sirv from 'sirv';
import express from 'express';
import compression from 'compression';
import * as sapper from '@sapper/server';
const fs = require('fs');
const ini = require('ini');
const { PORT, NODE_ENV } = process.env;
const dev = NODE_ENV === 'development';

const config = ini.parse(fs.readFileSync(__dirname+'/../../../secrets.ini', 'utf-8'));

const app = express();
const bodyParser = require("body-parser");
const cors = require('cors')
let str = "inimess";
const mongodb = require('mongodb');
var BSONRegExp = mongodb.BSONRegExp;
const uri = "mongodb+srv://" + config.username + ":" + config.password + "@"+ config.dburl+".mongodb.net/test?retryWrites=true&w=majority";
const MongoClient = mongodb.MongoClient;
const client = new MongoClient(uri, { useNewUrlParser: true, useUnifiedTopology: true });

client.connect(err => {
	if(err)console.log("Connection failed due to :", err);
	var db = client.db("test");
	var collection = db.collection("test");

	app.use(express.json({
		type: ['application/json', 'text/plain']
	}));
	app.use(express.urlencoded());
	app.use(bodyParser.json());
	app.use(cors());

	app.post('/submit-form', (req, res) => {
		let data = req.body;
		collection.insertOne(data, function(err, res) {
				if (err) console.log(err);
				console.log("1 document inserted");});
		res.end()
	});

	app.post('/submit-reply', (req, res) => {
		let data = req.body;
		collection.updateOne(
			{_id:mongodb.ObjectId(data.id)},
			{
			  $push: {
				"reply": { name: data.name, time: data.time, message: data.message }
			  }
			}
			, function(err, res) {
				if (err) console.log(err);
				console.log("1 document updated");}
		 )
		 ;
		res.end()
	});

	app.get('/messagedata',function (req,res) {
		collection.find({}).toArray((err,docs)=>{
			//console.log(err,docs);
			str = docs;
			res.send(str);
			
		});
		});
	

	app // You can also use Express
		.use(
			compression({ threshold: 0 }),
			sirv('static', { dev }),
			sapper.middleware()
		)
		.listen(PORT, err => {
			if (err) console.log('error', err);
		});


});
