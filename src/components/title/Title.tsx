import { type FC } from 'react';

import style from './Title.module.css';

interface TitleProps {
	/**
	 * Content of the Title.
	 */
	children: string;
}
export type { TitleProps };

/**
 * Main Title component.
 */
export const Title: FC<TitleProps> = ({ children }) => {
	return <h1 className={style.title}>{children}</h1>;
};
