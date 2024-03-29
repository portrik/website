import { type FC } from 'react';

import { Me } from '@assets';

import style from './ProfilePicture.module.css';

/**
 * Profile picture of me for the Header element.
 */
export const ProfilePicture: FC = () => {
	return (
		<img
			src={Me}
			className={style['profile-picture']}
			alt="Portrait of Patrik Dvořáček"
		/>
	);
};
