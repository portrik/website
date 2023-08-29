<script lang="ts">
  import type { SvgComponent } from 'svelte-bootstrap-icons';

  /**
   * Name of the resource the link is pointing to.
   * Used mainly for accessibility.
   */
  export let title: string;

  /**
   * Link to the resource.
   * Used on the print version.
   */
  export let link: string;

  /**
   * Username or email address displayed on the digital version.
   */
  export let username: string;

  /**
   * Icon to be displayed.
   */
  export let icon: typeof SvgComponent;
</script>

<a
  href={link}
  title={`My ${title}`}
  rel={title === 'Mastodon' ? 'me' : undefined}
>
  <svelte:component this={icon} />

  <p>{username.includes('@') ? username : `@${username}`}</p>
</a>

<style>
  a {
    display: flex; /* Add nicely aligned display. */
    flex-direction: row;
    gap: 1vw;
    align-items: center;
    justify-content: start;

    color: inherit;
    font-size: 1rem;

    text-decoration: none; /* Remove the default link styling. */
  }
</style>
