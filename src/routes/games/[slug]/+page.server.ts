import { type LoadEvent, redirect } from '@sveltejs/kit';
import { compile } from 'mdsvex';

export async function load(e: LoadEvent) {
  const { slug } = e.params;

  const res = await e.fetch(`/content/games/${slug}.md`);
  if (res.status != 200) {
    throw redirect(302, '/');
  }

  const md = await res.text();
  const data = await compile(md);

  return {
    ...(data?.data?.fm ?? {}),
    content: data?.code
  };
}
