import { type FC } from 'react';
// ! Must use the import from index here!
// The problem is with vite-plugin-ssr which cannot handle import from "react-icons/bs".
// It throws an error that it cannot import directory for some reason.
import {
	BsEnvelopeFill,
	BsGithub,
	BsLinkedin,
	BsMastodon,
} from 'react-icons/bs/index';

import { ProfilePicture, Social, Title } from '@components';

import style from './Header.module.css';

export const Header: FC = () => {
	return (
		<div className={style.header}>
			<div className={style.intro}>
				<ProfilePicture />

				<Title>Patrik Dvořáček</Title>
			</div>

			<div className={style.socials}>
				<Social
					title="Email"
					link="mailto:patrik@dvoracek.dev"
					username="patrik@dvoracek.dev"
					icon={<BsEnvelopeFill />}
				/>

				<Social
					title="GitHub"
					link="https://github.com/tehSIRius"
					username="@tehSIRius"
					icon={<BsGithub />}
				/>

				<Social
					title="Mastodon"
					link="https://mastodon.social/@portrik"
					username="@portrik"
					icon={<BsMastodon />}
				/>

				<Social
					title="LinkedIn"
					link="https://www.linkedin.com/in/patrikdvoracek/"
					username="@patrikdvoracek"
					icon={<BsLinkedin />}
				/>
			</div>
		</div>
	);
};
