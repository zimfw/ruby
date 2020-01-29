#
# Ruby aliases/settings
#

() {

  # rbenv
  if zstyle -t ':zim:ruby' 'version-management-tool' 'rbenv'; then
    # Verify homebrew
    if (( ${+commands[brew]} )); then
      # Use updated openssl
      local -r openssl11_dir=$(brew --prefix openssl@1.1)
      [[ -d ${openssl11_dir} ]] && export RUBY_CONFIGURE_OPTS="--with-openssl-dir=${openssl11_dir}"
    fi
    # Load rbenv into the shell session
    (( ${+commands[rbenv]} )) && eval "$(rbenv init -)"
    # Set rbenv aliases
    alias rbe='rbenv'
    alias rbei='rbenv install'
  fi

  # RVM
  if zstyle -t ':zim:ruby' 'version-management-tool' 'rvm'; then
    # Load RVM into the shell session
    if [[ -s "$HOME/.rvm/scripts/rvm" ]]; then
      # Unset AUTO_NAME_DIRS since auto adding variable-stored paths to ~
      # list conflicts with RVM. See https://rvm.io/integration/zsh.
      unsetopt AUTO_NAME_DIRS
      # Source RVM
      source "$HOME/.rvm/scripts/rvm"
    fi
    # Set RVM aliases
    alias rvmi='rvm install'
  fi

  #
  # Aliases
  #

  # Ruby
  alias rb='ruby'

  # Bundler
  alias rbb='bundle'
  alias rbbc='bundle clean'
  alias rbbe='bundle exec'
  alias rbbi='bundle install --path vendor/bundle'
  alias rbbl='bundle list'
  alias rbbo='bundle open'
  alias rbbp='bundle package'
  alias rbbu='bundle update'
}
