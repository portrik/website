import { type FC } from 'react';

import style from './Title.module.css';

interface TitleProps {
	children: string;
}
export type { TitleProps };

export const Title: FC<TitleProps> = ({ children }) => {
	return <h1 className={style.title}>{children}</h1>;
};
