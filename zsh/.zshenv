export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv virtualenv-init -)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
