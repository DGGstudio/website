<script lang="ts">
  import { Button } from 'flowbite-svelte';

  export let background = '';
  export let headline = '';
  export let content = '';
  export let buttons: { icon: string; label: string; href: string }[] = [];
</script>

<div class="">
  {#if background}
    <img class="absolute -z-10" src={background} alt="" />
  {/if}

  <div class="mx-auto max-w-7xl px-4 text-center">
    <h1 class="py-8">
      {@html headline}
    </h1>

    <p>
      {@html content}
    </p>

    <div class="pt-8 flex flex-col md:flex-row justify-center gap-4">
      {#each buttons as { label, href }}
        <Button outline {href}>
          {label}
        </Button>
      {/each}
    </div>
  </div>
</div>
