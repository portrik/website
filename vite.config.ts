/// <reference types="vitest" />
import path from 'node:path';
import url from 'node:url';

import strip from '@rollup/plugin-strip';
import react from '@vitejs/plugin-react';
import { defineConfig, UserConfigExport } from 'vite';
import { ssr } from 'vite-plugin-ssr/plugin';

const directoryName = path.dirname(url.fileURLToPath(import.meta.url));

const configuration: UserConfigExport = {
	build: {
		outDir: path.resolve(path.join(directoryName, 'build')),
		emptyOutDir: true,
	},

	plugins: [
		ssr({
			prerender: {
				noExtraDir: true,
			},
			includeAssetsImportedByServer: true,
		}),
		react(),
		strip(),
	],

	resolve: {
		alias: {
			'@assets': path.resolve(path.join(directoryName, 'src', 'assets')),
			'@components': path.resolve(
				path.join(directoryName, 'src', 'components')
			),
			'@renderer': path.resolve(path.join(directoryName, 'src', 'renderer')),
			'@theme': path.resolve(path.join(directoryName, 'src', 'theme')),
		},
	},

	server: {
		port: 8080,
	},

	test: {
		globals: true,
		environment: 'happy-dom',

		coverage: {
			provider: 'c8',
			enabled: true,
			exclude: [
				'coverage/**',
				'dist/**',
				'packages/*/test{,s}/**',
				'**/*.d.ts',
				'cypress/**',
				'test{,s}/**',
				'test{,-*}.{js,cjs,mjs,ts,tsx,jsx}',
				'**/*{.,-}test.{js,cjs,mjs,ts,tsx,jsx}',
				'**/*{.,-}spec.{js,cjs,mjs,ts,tsx,jsx}',
				'**/__tests__/**',
				'**/{karma,rollup,webpack,vite,vitest,jest,ava,babel,nyc,cypress,tsup,build}.config.*',
				'**/.{eslint,mocha,prettier}rc.{js,cjs,yml}',
				'**/src/renderer/**',
				'**/src/assets/**',
				'**/index.ts',
			],
		},

		typecheck: {
			checker: 'tsc',
		},
	},
};

export default defineConfig(configuration);
