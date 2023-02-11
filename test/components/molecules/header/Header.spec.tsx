import { render } from '@testing-library/react';

import { Header } from '@components';

describe('Header', () => {
	test('Should Render Header', () => {
		const header = render(<Header />);

		expect(header.baseElement).toMatchSnapshot();
	});
});
