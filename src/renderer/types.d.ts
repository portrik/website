// Types provided by the vite-plugin-ssr
// I have only modified their exports formatted the file.

import {
	type PageContextBuiltIn,
	type PageContextBuiltInClientWithServerRouting,
} from 'vite-plugin-ssr/types';

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
type PageContextClient = PageContextBuiltInClientWithServerRouting<Page> &
	PageContextCustom;

type PageContext = PageContextClient | PageContextServer;

export type {
	Page,
	PageProperties as PageProps,
	PageContextCustom,
	PageContextServer,
	PageContextClient,
	PageContext,
};
