import type { LoadEvent } from '@sveltejs/kit';
import { compile } from 'mdsvex';

import { games } from '$lib/data/games';

export async function load(e: LoadEvent) {
  const items: any = [];
  for (const slug of games.pages) {
    const res = await e.fetch(`/content/games/${slug}.md`);
    if (res.status != 200) {
      console.error('error: page not found', slug);
      continue;
    }

    const md = await res.text();
    const data = await compile(md);
    const fm = data?.data?.fm ?? {};
    items.push({ slug, ...fm });
  }

  return {
    ...games,
    items
  };
}
