// Types provided by the vite-plugin-ssr.

import { type PageContextBuiltIn } from 'vite-plugin-ssr';
import { type PageContextBuiltInClient } from 'vite-plugin-ssr/client';

type PageProperties = Record<string, unknown>;
type Page = (pageProperties: PageProperties) => React.ReactElement;

interface PageContextCustom {
	Page: Page;
	pageProps?: PageProperties;
	urlPathname: string;
	exports: {
		documentProps?: {
			title?: string;
			description?: string;
		};
	};
}

type PageContextServer = PageContextBuiltIn<Page> & PageContextCustom;
type PageContextClient = PageContextBuiltInClient<Page> & PageContextCustom;

type PageContext = PageContextClient | PageContextServer;

export type {
	Page,
	PageProperties as PageProps,
	PageContextCustom,
	PageContextServer,
	PageContextClient,
	PageContext,
};
