export function handle({ event, resolve }) {
  event.setHeaders({ 'cache-control': 'max-age=300' });
  return resolve(event);
}
