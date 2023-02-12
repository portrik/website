/**
 * Converts a date into a en-GB locale string with long month and numeric year.
 *
 * @param date Date to be formatted
 *
 * @returns Formatted date string
 */
export function dateToReadable(date: Date): string {
	return date.toLocaleString('en-GB', { month: 'long', year: 'numeric' });
}
