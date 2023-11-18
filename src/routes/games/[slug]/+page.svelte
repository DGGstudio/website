<script lang="ts">
  export let data: { title: string; description: string; content: string };
</script>

<div class="content">
  <article class="mx-auto p-8 max-w-5xl">
    <h1>{data.title}</h1>

    {@html data.content}
  </article>
</div>
