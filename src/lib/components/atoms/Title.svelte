<h1>
  <slot />
</h1>

<style>
  h1 {
    display: inline-block;

    width: min-content;
    margin: 0;

    font-weight: 900;
    font-size: 3rem;
    line-height: 3rem;
    white-space: pre-line;
    text-transform: uppercase;

    background: var(--theme-gradient);
    background-clip: text;

    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
  }

  @media print {
    h1 {
      font-size: 2rem;

      -webkit-text-fill-color: var(--foreground);
    }
  }
</style>
