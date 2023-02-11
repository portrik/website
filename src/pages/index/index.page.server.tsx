import { type FC } from 'react';

import { Header } from '@components';

/**
 * Main page.
 */
export const Page: FC = () => {
	return (
		<>
			<Header />

			<hr />

			<p>
				Hello there! I am a software engineer with specialization in TypeScript
				and browser content development. Currently, I am working on internal
				tooling at <a href="https://gendigital.com">Gen Digital</a>. If you want
				to see an example of my work, head on to my GitHub profile. You can even
				checkout the source code and complete CI/CD pipeline of{' '}
				<a href="https://github.com/tehSIRius/website">this website</a>!
			</p>

			<div>
				<h2>Experience</h2>

				<div>
					<h3>Gen Digital / Avast</h3>

					<i>September 2018 - Present</i>

					<ul>
						<li>
							Development of internal tooling browser-based with{' '}
							<b>TypeScript</b>, mostly with <b>Node</b> and <b>React</b>
						</li>

						<li>
							Data retrieval and analysis with <b>Python</b>
						</li>

						<li>
							REST API development with <b>FastAPI</b>
						</li>

						<li>
							CI/CD pipeline creation with <b>GitHub</b>, <b>TeamCity</b> and
							<b>Jenkins</b>
						</li>

						<li>
							Automated testing with <b>vitest</b>, <b>pytest</b>,{' '}
							<b>Cypress</b> and <b>Selenium</b>
						</li>

						<li>Manual testing of Windows, macOS and browser products</li>
					</ul>
				</div>

				<div>
					<h3>CTU FEL</h3>

					<i>September 2019 - June 2022</i>

					<ul>
						<li>
							Bachelor&apos;s degree in Software Engineering and Technologies
						</li>

						<li>
							My thesis was implementation of{' '}
							<a href="https://dspace.cvut.cz/handle/10467/100944">
								Modular Dashboard for CI
							</a>
						</li>

						<li>
							Advanced mathematics, data structures, algorithms, project
							management
						</li>

						<li>Mainly focused on software engineering</li>

						<li>
							Lots of hands-on experience with <b>Java</b>, <b>Python</b>,{' '}
							<b>Dart</b>
							and <b>C++</b>
						</li>
					</ul>
				</div>

				<div>
					<h3>Technical High School Třebíč</h3>

					<i>September 2014 - June 2018</i>

					<ul>
						<li>Subject was Computer Systems</li>

						<li>
							Basics of algorithms, mainly in <b>C++</b> and <b>C#</b>
						</li>

						<li>
							Low-level programming of micro controllers with <b>C</b>
						</li>

						<li>
							Web development crash-course with <b>HTML</b>, <b>CSS</b>,
							<b>JavaScript</b> and <b>PHP</b>
						</li>

						<li>Design and manufacturing of integrated circuits</li>
					</ul>
				</div>

				<div>
					<h3>Cooldown.cz</h3>

					<i>2015 - Present</i>

					<ul>
						<li>Video game reviews, commentaries and previews</li>

						<li>Interviewing game developers</li>

						<li>In-person conference attendance</li>
					</ul>
				</div>
			</div>
		</>
	);
};
