<script lang="ts">
  import { DarkMode, Navbar, NavBrand, NavHamburger, NavLi, NavUl } from 'flowbite-svelte';

  import { page } from '$app/stores';
  import { nav } from '$lib/data';
</script>

<Navbar class="sticky top-0 z-10" let:hidden let:toggle>
  <NavBrand href="/">
    <img src={nav.logo} class="mr-3 h-6 sm:h-9" alt="logo" />
    <span class="self-center whitespace-nowrap text-xl font-semibold dark:text-white">
      {nav.brand}
    </span>
  </NavBrand>

  <div class="flex md:order-2">
    <DarkMode />
    <NavHamburger on:click={toggle} />
  </div>

  <NavUl {hidden}>
    {#each nav.items as { href, label }}
      <NavLi {href} active={`${$page.url.pathname}${$page.url.hash}` == href}>{label}</NavLi>
    {/each}
  </NavUl>
</Navbar>
