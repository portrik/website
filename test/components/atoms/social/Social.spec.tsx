import { render } from '@testing-library/react';

import { BsEnvelopeFill } from 'react-icons/bs/index';

import { Social } from '@components';

describe('Social', () => {
	test('Should Render Social', () => {
		const social = render(
			<Social
				icon={<BsEnvelopeFill />}
				link="https://dvoracek.dev/test"
				title="Test Social"
				username="Test Username"
			/>
		);

		expect(social.baseElement).toMatchSnapshot();
	});
});
