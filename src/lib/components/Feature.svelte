<script lang="ts">
  import { DeviceMockup } from 'flowbite-svelte';

  export let title = '';
  export let subtitle = '';
  export let image = '';
  export let imageDark = '';
  export let device:
    | 'default'
    | 'ios'
    | 'android'
    | 'tablet'
    | 'laptop'
    | 'desktop'
    | 'smartwatch' = 'default';
</script>

<div class="mx-auto max-w-3xl text-center">
  <h2>{@html title}</h2>
  <p class="py-8">{@html subtitle}</p>

  <DeviceMockup {device}>
    <img src={image} class="dark:hidden" alt="" />
    <img src={imageDark} class="hidden dark:block" alt="" />
  </DeviceMockup>
</div>
