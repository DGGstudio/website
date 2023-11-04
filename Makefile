#
# Code generated by `gkgen`
#

.PHONY: build

# Environments
-include .env

#: list all targets
help:
	@grep -B1 -E "^[a-zA-Z0-9_%-]+:([^\=]|$$)" Makefile \
		| grep -v -- -- \
		| sed 'N;s/\n/###/' \
		| sed -n 's/^#: \(.*\)###\(.*\):.*/\2###\1/p' \
		| column -t -s '###'

# -----------------------------------------------------------------------------
# Svelte
# -----------------------------------------------------------------------------
#: format source code
fmt:
	pnpm format

#: start ESLint
lint:
	pnpm lint

#: Svelte check
check:
	pnpm check

#: test
test:
	npm run test

#: start the dev server
run:
	pnpm dev

#: locally preview production build
preview:
	pnpm preview

#: build for production
build:
	pnpm build
#	cp package.json pnpm-lock.yaml build/
