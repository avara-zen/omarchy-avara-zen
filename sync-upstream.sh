#!/bin/bash
cd ~/code/omarchy-avara-zen
git fetch upstream
if [ $(git rev-list HEAD...upstream/master --count) -gt 0 ]; then
  git merge upstream/master
  echo "✅ Upstream merged!"
  git push origin master
else
  echo "✅ Уже актуально"
fi
