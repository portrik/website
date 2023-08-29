<script lang="ts">
  import Social from '$lib/components/atoms/Social.svelte';
  import Title from '$lib/components/atoms/Title.svelte';
  import ProfilePicture from '$lib/components/atoms/ProfilePicture.svelte';
  import {
  	EnvelopeFill,
  	Github,
  	Linkedin,
  	Mastodon,
  	type SvgComponent,
  } from 'svelte-bootstrap-icons';

  interface SocialItem {
    title: string;
    link: string;
    username: string;
    icon: typeof SvgComponent;
  }

  const socials: SocialItem[] = [
  	{
  		title: 'Email',
  		link: 'mailto:patrik@dvoracek.dev',
  		username: 'patrik@dvoracek.dev',
  		icon: EnvelopeFill,
  	},
  	{
  		title: 'GitHub',
  		link: 'https://github.com/portrik',
  		username: 'portrik',
  		icon: Github,
  	},
  	{
  		title: 'Mastodon',
  		link: 'https://mastodon.social/@portrik',
  		username: 'portrik',
  		icon: Mastodon,
  	},
  	{
  		title: 'LinkedIn',
  		link: 'https://www.linkedin.com/in/patrikdvoracek',
  		username: 'patrikdvoracek',
  		icon: Linkedin,
  	},
  ];
</script>

<div id="wrapper">
  <div id="intro">
    <ProfilePicture />

    <Title>Patrik Dvořáček</Title>
  </div>

  <div id="socials">
    {#each socials as social}
      <Social {...social} />
    {/each}
  </div>
</div>

<style>
  #wrapper {
    /* Nice flex display to align the contents of the header. */
    display: flex;
    flex-flow: row wrap;
    gap: 2vw;
    align-items: center;
    justify-content: space-around;
    width: 100%;

    /* Get fixed height for the Header. */
    height: min-content;
    padding: 2vh;

    border-bottom: 1px var(--foreground-light) solid;
  }

  /* Bundling title and profile photo together for more consistent look. */
  #intro {
    display: flex;
    flex-direction: row;
    gap: 2rem;
    align-items: center;
    justify-content: center;
  }

  #socials {
    /* Sets up the grid with at least two columns. */
    display: grid;

    /* Sizes the socials bounding box to occupy the empty space in the header. */
    flex-grow: 2;
    grid-template-columns: 2fr 2fr;
    justify-items: center;
    min-width: max-content;

    /* Gives the socials more padding. */
    padding: 0 2vw;
  }
</style>
