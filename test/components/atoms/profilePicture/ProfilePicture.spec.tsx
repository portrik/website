import { render } from '@testing-library/react';

import { ProfilePicture } from '@components';

describe('ProfilePicture', () => {
	test('Should Render ProfilePicture', () => {
		const picture = render(<ProfilePicture />);

		expect(picture.baseElement).toMatchSnapshot();
	});
});
