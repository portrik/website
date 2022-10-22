import { createContext, type FC, type ReactNode, useContext } from 'react';

import { type PageContext } from './types';

const Context = createContext<PageContext>({} as PageContext);

interface PageContextProviderProps {
	pageContext: PageContext;
	children: ReactNode;
}

export const PageContextProvider: FC<PageContextProviderProps> = ({
	pageContext,
	children,
}) => {
	return <Context.Provider value={pageContext}>{children}</Context.Provider>;
};

export function usePageContext() {
	return useContext(Context);
}
