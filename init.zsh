#
# Ruby aliases/settings
#

# Use updates openssl
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# Load rbenv into the shell session
eval "$(rbenv init -)"

#
# Aliases
#

# General
alias rb='ruby'

# rbenv
alias rbe='rbenv'
alias rbei='rbenv install'

# Bundler
alias rbb='bundle'
alias rbbc='bundle clean'
alias rbbe='bundle exec'
alias rbbi='bundle install --path vendor/bundle'
alias rbbl='bundle list'
alias rbbo='bundle open'
alias rbbp='bundle package'
alias rbbu='bundle update'