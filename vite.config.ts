/// <reference types="vitest" />
import path from 'node:path';
import url from 'node:url';

import strip from '@rollup/plugin-strip';
import { defineConfig, type UserConfigExport } from 'vite';
import { sveltekit } from '@sveltejs/kit/vite';

const directoryName = path.dirname(url.fileURLToPath(import.meta.url));

const configuration: UserConfigExport = {
	build: {
		outDir: path.resolve(path.join(directoryName, 'build')),
		emptyOutDir: true,
	},

	plugins: [
		sveltekit(),
		strip(),
	],

	resolve: {
		alias: {
			'@assets': path.resolve(path.join(directoryName, 'src', 'assets')),
			'@components': path.resolve(
				path.join(directoryName, 'src', 'components')
			),
			'@renderer': path.resolve(path.join(directoryName, 'src', 'renderer')),
		},
	},

	server: {
		port: 8080,
	},

	test: {
		globals: true,
		environment: 'happy-dom',

		coverage: {
			provider: 'v8',
			enabled: true,
			include: ['src/**/*.{test,spec}.{js,ts}']
		},

		typecheck: {
			checker: 'tsc',
		},
	},
};

export default defineConfig(configuration);
