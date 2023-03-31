import { type FC, type ReactNode } from 'react';

import style from './Social.module.css';

interface SocialProperties {
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
export type { SocialProperties as SocialProps };

/**
 * Component handling the display of a link to a social network profile.
 * Also works with email :)
 */
export const Social: FC<SocialProperties> = ({
	link,
	icon,
	username,
	title,
}) => {
	return (
		<a href={link} title={`My ${title}`} className={style.social} rel={title === 'Mastodon' ? 'me' : undefined}>
			{icon}

			<p>{username}</p>
		</a>
	);
};
