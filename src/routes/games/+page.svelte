<script lang="ts">
  import { GameItem, Hero } from '$lib/components';
  export let data: any = {};
</script>

<Hero {...data.hero} />

<div class="mx-auto flex justify-center flex-wrap gap-8">
  {#each data.items as { slug, img, title, description }}
    <GameItem {slug} {img} {title} {description} />
  {/each}
</div>
