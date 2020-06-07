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



let str = "inimess";

const mongodb = require('mongodb');

var BSONRegExp = mongodb.BSONRegExp;
const uri = "mongodb+srv://" + config.username + ":" + config.password + "@"+ config.dburl+".mongodb.net/test?retryWrites=true&w=majority";
const MongoClient = mongodb.MongoClient;



app.use(express.json({
	type: ['application/json', 'text/plain']
  }));
app.use(express.urlencoded());
app.post('/submit-form', (req, res) => {
	let data = req.body;
	const client = new MongoClient(uri, { useNewUrlParser: true, useUnifiedTopology: true });
	client.connect(err => {
		if(err)console.log("Connection failed due to :", err);
		var db = client.db("test");
		var collection = db.collection("test");
		
		collection.insertOne(data, function(err, res) {
			if (err) throw err;
			console.log("1 document inserted");});
			
		
	});
	res.end()
  });

app.get('/message',function (req,res) {
	const client = new MongoClient(uri, { useNewUrlParser: true, useUnifiedTopology: true });
	client.connect(err => {
		if(err)console.log("Connection failed due to :", err);
		var db = client.db("test");
		var collection = db.collection("test");
		
		var query = {
		};
		
		collection.find(query).toArray((err,docs)=>{
			//console.log(err,docs);
			str = docs;
			res.send(str);
			client.close();
		});
		
	});
      //服务器响应请求
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
