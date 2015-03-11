  $ . "$TESTDIR/helper.sh"

Making an rc file should move it into dotfiles and create a symlink

  $ touch .example\ with\ spaces

  $ mkrc -v .example\ with\ spaces
  Moving...
  '*/.example\ with\ spaces' -> '*/.dotfiles/example\ with\ spaces' (glob)
  Linking...
  '*/.dotfiles/example\ with\ spaces' -> '*/.example\ with\ spaces' (glob)

  $ assert_linked "$HOME/.example\ with\ spaces" "$HOME/.dotfiles/example\ with\ spaces"
