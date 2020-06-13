<script>
    import { onMount } from "svelte";
    let messages = [];
    let rrr;
	onMount(async function() {
        const response = await fetch("http://localhost:3000/messagedata");
        messages = await response.json();
    });

    import Replybar from '../components/Replybar.svelte';

    

    
</script>



<div class="bg-gray-400 pb-32">

    <h1 class="w-full text-center pt-24 font-bold">Message Board</h1>

    <div class="flex w-full justify-center">
        {#if messages}
            <ul class="w-1/2 p-5 space-y-4">
            {#each messages.reverse() as {time, name, message, _id, reply}, i}
                <li>
                    <div class="border-solid border-2 border-gray-600 rounded bg-white p-3">
                        {name? name:"Somebody"}: 
                        <div class="">
                            
                            <div class="text-3xl font-bold">
                                {message}
                            </div>

                            <div></div>

                            <div class="text-sm italic">
                                <p class="mb-3">{time.slice(4,21)}</p>
                            </div>

                            <Replybar  reply = {reply} id = {_id} />

                        </div>
                    </div>
                </li>
            {/each}
            </ul>
        {:else}
            <p class="font-bold text-2xl">Waiting...</p>
        {/if}
    </div>

</div>