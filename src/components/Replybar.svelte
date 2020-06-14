<script>
    export let reply;
    export let id;
    let time;
    
    async function handleReply(event) {
        
        console.log(id);
        console.log(event.target.name.value);
        console.log(event.target.message.value);
        time = Date(Date.now());

        /*reply.push({"name": event.target.name.value,
					"message":event.target.message.value,
					"time":time});
        */
       
		fetch("/submit-reply", {
				method: "POST",
				headers: {
					
					'Content-Type': 'application/json'
				},

				//make sure to serialize your JSON body
				body: JSON.stringify({
                    "id": id,
					"name": event.target.name.value,
					"message":event.target.message.value,
					"time":time
				})
				}).then( (response) => { 
				//do something awesome that makes the world a better place
				})
                ;
                
                
				}


    let show=false;
    function togshow(){show=!show;}
</script>
<style>

</style>


<a class="flex" href="/" on:click|preventDefault={togshow}>
    {#if show}
        <img class="w-5 h-5 opacity-75" src="https://freesvg.org/img/1510699274.png" alt="">
    {:else}
        <img class="w-5 h-5 opacity-75" src="https://freesvg.org/img/dev.png" alt="">
    {/if}
    <div class="ml-3">{reply? reply.length: 0} reply</div>

</a>

<div class="{show?'':'hidden'}">
    
        <ul class="w-full p-5 space-y-2">
        {#each reply as {time, name, message}, i}
            <li>
                <div class="border-solid border-2 border-gray-600 rounded bg-white p-1">
                    {name? name:"Somebody"}: 
                    <div class="">
                        
                        <div class="text-2xl font-bold">
                            {message}
                        </div>

                        <div></div>

                        <div class="text-sm italic">
                            <p class="">{time.slice(4,21)}</p>
                        </div>

                    </div>
                </div>
            </li>
        {/each}
        </ul>

    


    <form on:submit|preventDefault="{handleReply}" class="m-5">

            <input name="name" id="name" type="text" placeholder=" Name"
                class="mt-2 shadow appearance-none border rounded w-full py-2 px-3 text-grey-darker leading-tight focus:outline-none focus:shadow-outline">

            <textarea name="message" id="message" rows="3" placeholder=" Message"
                class="h-10 mt-2 shadow appearance-none border rounded w-full py-2 px-3 text-grey-darker leading-tight focus:outline-none focus:shadow-outline"></textarea>
        
        <ul class="actions">
            <li><input value="Reply" 
                class="rounded bg-blue-600 hover:bg-blue-800 text-white p-2 pl-6 pr-6 mt-4" 
                type="submit"></li>
        </ul>
    </form>
</div>