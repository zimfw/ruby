# Ruby

Provides `ruby` and `bundler` aliases and initializes `rbenv` and/or `rvm` if already installed.

If available, this module configures Ruby to use Homebrew's `openssl@1.1` dir.

## Aliases

- `rb` is short for `ruby`.

### Bundler

- `rbb` bundle install
- `rbbc` bundle clean
- `rbbe` bundle exec
- `rbbi` bundle install --path vendor/bundle
- `rbbl` bundle list
- `rbbo` bundle open
- `rbbp` bundle package
- `rbbu` bundle update

### rbenv

If you have rbenv installed with homebrew or `~/.rbenv/bin` is in your $PATH, this module will evaluate rbenv's init without additional configuration to your dotfiles. To install rbenv, see [https://github.com/rbenv/rbenv](https://github.com/rbenv/rbenv).

- `rbe` rbenv
- `rbei` rbenv install

### RVM

<!-- *RVM is probably the most popular Ruby Version Management tool. -->

If RVM is already installed, this module will unset zsh's AUTO_NAME_DIRS and source `~/.rvm/scripts/rvm` without additional configuration to your dotfiles. To install RVM see [https://rvm.io/rvm/install](https://rvm.io/rvm/install) and [https://rvm.io/integration/zsh](https://rvm.io/integration/zsh).

<!-- *Not suggested. RVM is a heavy handed shell script that slows down `cd`. [REF TK]. -->

- `rvmi` rvm install

<!--
## Contributing

[TK]
-->

## Licence

[MIT](./LICENSE)
