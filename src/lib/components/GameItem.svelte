<script lang="ts">
  import { Button, Card } from 'flowbite-svelte';

  export let slug = '/';
  export let img = 'https://www.habby.fun/static/media/Survivor.3d98a59c.png';
  export let title = 'Survivor.io';
  export let description =
    'Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.';
</script>

<Card {img} class="mb-4">
  <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
    {title}
  </h5>

  <p class="mb-3 font-normal text-gray-700 dark:text-gray-400 leading-tight">
    {description}
  </p>

  <Button href={`/games/${slug}`}>Read more</Button>
</Card>
