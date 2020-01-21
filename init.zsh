#
# Ruby aliases/settings
#

() {
  if (( ${+commands[brew]} )); then
    # Use updates openssl
    local -r openssl11_dir=$(brew --prefix openssl@1.1)
    [[ -d ${openssl11_dir} ]] && export RUBY_CONFIGURE_OPTS="--with-openssl-dir=${openssl11_dir}"
  fi
  # Load rbenv into the shell session
  (( ${+commands[rbenv]} )) && eval "$(rbenv init -)"

  #
  # Aliases
  #

  # General
  alias rb='ruby'

  # rbenv
  alias rbe='rbenv'
  alias rbei='rbenv install'

  # bundler
  alias rbb='bundle'
  alias rbbc='bundle clean'
  alias rbbe='bundle exec'
  alias rbbi='bundle install --path vendor/bundle'
  alias rbbl='bundle list'
  alias rbbo='bundle open'
  alias rbbp='bundle package'
  alias rbbu='bundle update'
}
