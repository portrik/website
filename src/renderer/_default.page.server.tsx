import { renderToString } from 'react-dom/server';
import { dangerouslySkipEscape, escapeInject } from 'vite-plugin-ssr/server';

import { Base } from '@components';

import { type PageContextServer } from './types';

/**
 * Data passed to the client from the server.
 */
export const passToClient = ['pageProps', 'urlPathname'];

/**
 * Server-side renderer used by the vite-plugin-ssr.
 * Not 100% sure how it works since I am not using it.
 *
 * Updated to match my preferred code styling.
 */
export function render(pageContext: PageContextServer): {
	documentHtml: ReturnType<typeof escapeInject>;
	pageContext: object;
} {
	const { Page, pageProps, exports } = pageContext;
	const { documentProps } = exports;

	const title = documentProps?.title ?? 'Patrik Dvořáček';
	const desc =
		documentProps?.description ?? 'Personal website of Patrik Dvořáček.';

	const pageHtml = renderToString(
		<Base pageContext={pageContext}>
			<Page {...pageProps} />
		</Base>
	);

	const documentHtml = escapeInject`<!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="${desc}" />

        <title>${title}</title>
      </head>

      <body>
        <div id="page-view">${dangerouslySkipEscape(pageHtml)}</div>
      </body>
    </html>`;

	return {
		documentHtml,
		pageContext: {},
	};
}
