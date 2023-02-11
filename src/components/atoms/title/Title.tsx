import { type FC } from 'react';

import style from './Title.module.css';

interface TitleProperties {
	/**
	 * Content of the Title.
	 */
	children: string;
}
export type { TitleProperties as TitleProps };

/**
 * Main Title component.
 */
export const Title: FC<TitleProperties> = ({ children }) => {
	return <h1 className={style.title}>{children}</h1>;
};
