import { createContext, type FC, type ReactNode, useContext } from 'react';

import { type PageContext } from './types';

/**
 * Page context used by the vite-plugin-ssr.
 */
const Context = createContext<PageContext>({} as PageContext);

interface PageContextProviderProps {
	pageContext: PageContext;
	children: ReactNode;
}

/**
 * Page context provider used by the vite-plugin-ssr.
 */
export const PageContextProvider: FC<PageContextProviderProps> = ({
	pageContext,
	children,
}) => {
	return <Context.Provider value={pageContext}>{children}</Context.Provider>;
};

/**
 * Page context hook used by the vite-plugin-ssr.
 */
export function usePageContext() {
	return useContext(Context);
}
