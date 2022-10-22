import { type PageContextBuiltIn } from 'vite-plugin-ssr';
import { type PageContextBuiltInClient } from 'vite-plugin-ssr/client';

type Page = (pageProps: PageProps) => React.ReactElement;
type PageProps = Record<string, unknown>;

type PageContextCustom = {
	Page: Page;
	pageProps?: PageProps;
	urlPathname: string;
	exports: {
		documentProps?: {
			title?: string;
			description?: string;
		};
	};
};

type PageContextServer = PageContextBuiltIn<Page> & PageContextCustom;
type PageContextClient = PageContextBuiltInClient<Page> & PageContextCustom;

type PageContext = PageContextClient | PageContextServer;

export type {
	Page,
	PageProps,
	PageContextCustom,
	PageContextServer,
	PageContextClient,
	PageContext,
};
