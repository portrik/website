import { type FC, type ReactNode } from 'react';

import style from './Social.module.css';

interface SocialProps {
	/**
	 * Name of the resource the link is pointing to.
	 * Used mainly for accessibility.
	 */
	title: string;

	/**
	 * Link to the resource.
	 * Used on the print version.
	 */
	link: string;

	/**
	 * Username or email address displayed on the digital version.
	 */
	username: string;

	icon: ReactNode;
}
export type { SocialProps };

/**
 * Component handling the display of a link to a social network profile.
 * Also works with email :)
 */
export const Social: FC<SocialProps> = ({ link, icon, username, title }) => {
	let printValue = link;
	if (link.startsWith('mailto:')) {
		// This check assumes the email link is properly formatted as mailto:email@address.example
		// and assigns the print value as email@address.example.
		printValue = printValue.split(':')[1];
	}

	return (
		<a href={link} title={`My ${title}`} className={style.social}>
			{icon}

			<p data-print-value={printValue} data-digital-value={username} />
		</a>
	);
};
