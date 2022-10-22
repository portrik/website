import { renderToString } from 'react-dom/server';
import { dangerouslySkipEscape, escapeInject } from 'vite-plugin-ssr';

import { Base } from '@components';

import { type PageContextServer } from './types';

export const passToClient = ['pageProps', 'urlPathname'];

export async function render(pageContext: PageContextServer) {
	const { Page, pageProps } = pageContext;
	const { documentProps } = pageContext.exports;

	const title = (documentProps && documentProps.title) || 'Patrik Dvořáček';
	const desc =
		(documentProps && documentProps.description) ||
		'Personal website of Patrik Dvořáček.';

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
