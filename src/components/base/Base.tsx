import { type FC, type ReactNode, StrictMode } from 'react';
import '@fontsource/jost';

import { type PageContext } from '@renderer/types';
import { PageContextProvider } from '@renderer/usePageContext';

import style from './Base.module.css';

interface BaseProps {
	children: React.ReactNode;
	pageContext: PageContext;
}
export type { Base as PageShellProps };

export const Base: FC<BaseProps> = ({ children, pageContext }) => {
	return (
		<StrictMode>
			<PageContextProvider pageContext={pageContext}>
				<Content>{children}</Content>
			</PageContextProvider>
		</StrictMode>
	);
};

interface ComponentWithChildrenProps {
	children: ReactNode;
}

const Content: FC<ComponentWithChildrenProps> = ({ children }) => {
	return (
		<div className={style.contentWrapper}>
			<div className={style.content}>{children}</div>
		</div>
	);
};
