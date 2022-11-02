import { type FC } from 'react';
// ! Must use the import from index here!
// The problem is with vite-plugin-ssr which cannot handle import from "react-icons/bs".
// It throws an error that it cannot import directory for some reason.
import { BsGithub, BsLinkedin, BsTwitter } from 'react-icons/bs/index';

import { ProfilePicture, Social, Title } from '@components';

import style from './Header.module.css';

export const Header: FC = () => {
	return (
		<div className={style.header}>
			<Title>Patrik Dvořáček</Title>

			<div>
				<Social
					title="GitHub"
					link="https://github.com/tehSIRius"
					username="tehSIRius"
					icon={<BsGithub />}
				/>

				<Social
					title="Twitter"
					link="https://twitter.com/DvoracekPatrik"
					username="DvoracekPatrik"
					icon={<BsTwitter />}
				/>

				<Social
					title="LinkedIn"
					link="https://www.linkedin.com/in/patrikdvoracek/"
					username="patrikdvoracek"
					icon={<BsLinkedin />}
				/>
			</div>

			<ProfilePicture />
		</div>
	);
};
