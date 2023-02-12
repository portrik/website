/**
 * Generates a unique ID from a source string.
 * Should be mainly used as a key in React mapping.
 *
 * Inspired by https://stackoverflow.com/questions/7616461/generate-a-hash-from-string-in-javascript
 *
 * @param source Source string to generate the ID from
 *
 * @returns Unique ID
 */
export function generateIdFromString(source: string) {
	// Unicorn has some interesting rules here.
	// However the simple operations should be alright.
	// And the idea of the reducer should be clear as it is only one line.
	return (
		[...source]
			// eslint-disable-next-line unicorn/no-array-reduce
			.reduce(
				(previous, current) =>
					// eslint-disable-next-line unicorn/prefer-code-point
					Math.trunc((previous << 5) - previous + current.charCodeAt(0)),
				0
			)
			.toString()
	);
}
