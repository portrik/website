import { type FC } from 'react';

interface ErrorPageProps {
	is404: boolean;
}
export type { ErrorPageProps };

export const Page: FC<ErrorPageProps> = ({ is404 }) => {
	return (
		<>
			<h1>{is404 ? '404 Page Not Found' : '500 Internal Server Error'}</h1>
			<p>{is404 ? 'This page could not be found.' : 'Something went wrong.'}</p>
		</>
	);
};