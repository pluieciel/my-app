<script>
    import { onMount } from "svelte";
    let messages = [];
    
	onMount(async function() {
        const response = await fetch("http://localhost:3000/messagedata");
        messages = await response.json();
    });
</script>

<div class="h-20"></div>

<h1 class="ml-10">Message Board</h1>


{#if messages}
	<ul class="p-5">
	{#each messages.reverse() as {time, name, message}, i}
		<li>
            <div class="w-1/2">
			    {i + 1}: 
                <div class="flex flex-col">
                    <div class="flex justify-between bg-blue-200 p-5">
                        <p>Name: {name}</p>
                        <p class="">Time: {time.slice(4,21)}</p>
                    </div>
                    <div class="bg-gray-500 p-5">
                        {message}
                    </div>
                </div>
		    </div>
        </li>
	{/each}
    </ul>
{:else}
	<p>Waiting...</p>
{/if}