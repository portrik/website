import { hydrateRoot } from 'react-dom/client';

import { Base } from '@components';

import { type PageContextClient } from './types';

export async function render(pageContext: PageContextClient) {
	const { Page, pageProps } = pageContext;

	const pageView = document.getElementById('page-view');
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
