#!/usr/bin/env zsh
set -ueo pipefail

uv lock && git init && git add . \
    && git commit --message 'Initial commit'

{% if cookiecutter.github %}
gh repo create --private --source . --push \
  --description '{{ cookiecutter.description }}'
gh repo edit \
  --enable-merge-commit=false \
  --enable-rebase-merge=false \
  --delete-branch-on-merge \
  --allow-update-branch
{% endif %}
