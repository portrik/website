import { hydrateRoot } from 'react-dom/client';

import { Base } from '@components';

import { type PageContextClient } from './types';

/**
 * Client-side renderer used by the vite-plugin-ssr.
 *
 * Updated to match my preferred code styling.
 */
export function render(
	pageContext: PageContextClient
): ReturnType<typeof hydrateRoot> | undefined {
	const { Page, pageProps } = pageContext;

	// The falsy check here should be redundant but it keeps TS happy.
	// And does not produce any forbidden-null-check errors from eslint.
	const pageView = document.querySelector('#page-view');
	if (!pageView) {
		return;
	}

	hydrateRoot(
		pageView,
		<Base pageContext={pageContext}>
			<Page {...pageProps} />
		</Base>
	);
}
