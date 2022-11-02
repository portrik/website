import react from '@vitejs/plugin-react';
import strip from '@rollup/plugin-strip';
import path from 'path';
import { defineConfig, UserConfigExport } from 'vite';
import { ssr } from 'vite-plugin-ssr/plugin';

const configuration: UserConfigExport = {
	build: {
		outDir: path.resolve(path.join(__dirname, 'build')),
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
			'@assets': path.resolve(path.join(__dirname, 'src', 'assets')),
			'@components': path.resolve(path.join(__dirname, 'src', 'components')),
			'@renderer': path.resolve(path.join(__dirname, 'src', 'renderer')),
		},
	},

	server: {
		port: 8080,
	},
};

export default defineConfig(configuration);
