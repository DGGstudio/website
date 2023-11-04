<script lang="ts">
  import '../app.postcss';
  import '$lib/styles/main.scss';

  import { page } from '$app/stores';

  import Navbar from './Navbar.svelte';
</script>

<svelte:head>
  <title>{$page.data.title}</title>
  <meta name="description" content={$page.data.description} />
</svelte:head>

<Navbar />

<main>
  <slot />
</main>
