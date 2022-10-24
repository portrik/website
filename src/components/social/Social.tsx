import { type FC, type ReactNode } from 'react';

import style from './Social.module.css';

interface SocialProps {
	title: string;
	link: string;
	username: string;
	icon: ReactNode;
}
export type { SocialProps };

export const Social: FC<SocialProps> = ({ title, link, icon }) => {
	return (
		<span className={style.social}>
			<a href={link}>
				{icon}

				<p>{title}</p>
			</a>
		</span>
	);
};
