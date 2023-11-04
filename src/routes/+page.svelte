<script lang="ts">
  import { Hero } from '$lib/components';
  import Feature from '$lib/components/Feature.svelte';

  export let data: any = {};
</script>

<section class="px-8 py-16 md:py-32">
  <Hero {...data.hero} />
</section>

{#each data.features as feature, i}
  <section id={i == 0 ? 'features' : ''} class="px-8 py-16">
    <Feature {...feature} />
  </section>
{/each}

<style lang="postcss">
  section:nth-child(even) {
    @apply bg-gray-100 dark:bg-gray-800;
  }
</style>
