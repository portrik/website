import { render } from '@testing-library/react';

import { Title } from '@components';

describe('Title', () => {
	test('Should Render Title', () => {
		const title = render(<Title>Test Title</Title>);

		expect(title.baseElement).toMatchSnapshot();
	});
});
