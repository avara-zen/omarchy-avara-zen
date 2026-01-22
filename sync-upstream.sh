#!/bin/bash
cd ~/code/omarchy-avara-zen

git fetch upstream

if [ $(git rev-list HEAD...upstream/master --count) -eq 0 ]; then
  echo "✅ Уже актуально"
  exit 0
fi

echo "🔄 Мердж upstream/master..."
if ! git merge upstream/master; then
  echo "❌ КОНФЛИКТЫ! Разрешите вручную:"
  echo "1. git status"
  echo "2. git add ."
  echo "3. git commit -m 'Merge upstream (resolved)'"
  echo "4. git push origin master"
  exit 1  # ЧИСТЫЙ выход с ошибкой
fi

echo "✅ Мердж успешен!"
git push origin master
notify-send "Upstream" "Синхронизировано!"
