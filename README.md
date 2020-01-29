# Ruby

Provides `ruby`, `bundler`, and `rbenv` or `rvm` integration and aliases.


## Aliases

### Ruby

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


## rbenv

If you have rbenv installed with homebrew or `~/.rbenv/bin` is in your $PATH, this module will evaluate rbenv's init without additional configuration to your dotfiles. To install rbenv, see [https://github.com/rbenv/rbenv](https://github.com/rbenv/rbenv).

<!-- *Suggested method (especially on macOS). -->

```zsh
# .zshrc

# --------
# zim ruby
# --------

# Set a ruby version-management-tool. Options include 'rbenv' and 'rvm'.
zstyle ':zim:ruby' version-management-tool 'rbenv'
```

### rbenv Aliases

- `rbe` rbenv
- `rbei` rbenv install

## RVM

<!-- RVM is probably the most popular Ruby Version Management tool. -->

If RVM is already installed, this module will unset zsh's AUTO_NAME_DIRS and source `~/.rvm/scripts/rvm` without additional configuration to your dotfiles. To install RVM see [https://rvm.io/rvm/install](https://rvm.io/rvm/install) and [https://rvm.io/integration/zsh](https://rvm.io/integration/zsh).

<!-- *Not suggested. RVM is a heavy handed shell script that slows down `cd`. [REF TK]. -->

```zsh
# .zshrc

# --------
# zim ruby
# --------

# Set a ruby version-management-tool. Options include 'rbenv' and 'rvm'.
zstyle ':zim:ruby' version-management-tool 'rvm'
```

### RVM Aliases

- `rvmi` rvm install

## Contributing

[TK]

## Licence

[TK]