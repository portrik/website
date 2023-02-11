import { type FC } from 'react';

interface ErrorPageProperties {
	is404: boolean;
}
export type { ErrorPageProperties as ErrorPageProps };

/**
 * Default error page provided by the vite-plugin-ssr.
 *
 * Updated to match my preferred code styling.
 */
export const Page: FC<ErrorPageProperties> = ({ is404 }) => {
	return (
		<>
			<h1>{is404 ? '404 Page Not Found' : '500 Internal Server Error'}</h1>
			<p>{is404 ? 'This page could not be found.' : 'Something went wrong.'}</p>
		</>
	);
};
