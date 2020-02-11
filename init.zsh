#
# Ruby aliases/settings
#

() {

  # If available, use Homebrew's (updated) openssl
  if (( ${+commands[brew]} )); then
    local -r openssl11_dir=$(brew --prefix openssl@1.1)
    [[ -d ${openssl11_dir} ]] && export RUBY_CONFIGURE_OPTS="--with-openssl-dir=${openssl11_dir}"
  fi

  #
  # rbenv
  #

  if (( ${+commands[rbenv]} )); then
    # Load rbenv into the shell session
    eval "$(rbenv init -)"
    # Set rbenv aliases
    alias rbe='rbenv'
    alias rbei='rbenv install'
  fi

  #
  # RVM
  #

  if [[ -s "${HOME}/.rvm/scripts/rvm" ]]; then
    # Unset AUTO_NAME_DIRS since auto adding variable-stored paths to ~
    # list conflicts with RVM. See https://rvm.io/integration/zsh
    unsetopt AUTO_NAME_DIRS
    # Load RVM into the shell session
    source "${HOME}/.rvm/scripts/rvm"
    # Set RVM aliases
    alias rvmi='rvm install'
  fi

  #
  # Aliases
  #

  # Ruby
  alias rb='ruby'

  # Bundler
  if (( ${+commands[bundle]} )); then
    alias rbb='bundle'
    alias rbbc='bundle clean'
    alias rbbe='bundle exec'
    alias rbbi='bundle install --path vendor/bundle'
    alias rbbl='bundle list'
    alias rbbo='bundle open'
    alias rbbp='bundle package'
    alias rbbu='bundle update'
  fi
}
