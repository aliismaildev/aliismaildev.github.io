#!/bin/bash

# Generate a unique build version using timestamp
BUILD_VERSION=$(date +%s)
echo "Building Flutter Web with version: $BUILD_VERSION"

# Build with version definition
flutter build web --dart-define=BUILD_VERSION=$BUILD_VERSION || exit 1

# Inject version into index.html to force cache busting
INDEX_FILE="build/web/index.html"
if [ -f "$INDEX_FILE" ]; then
  # Append version to main.dart.js and flutter.js references
  sed -i '' "s/main\.dart\.js/main.dart.js?v=$BUILD_VERSION/g" $INDEX_FILE
  sed -i '' "s/flutter\.js/flutter.js?v=$BUILD_VERSION/g" $INDEX_FILE
  echo "Injected version parameter into index.html"
else
  echo "index.html not found!"
  exit 1
fi

# Git deploy as before
git add build/web -f
git commit -m "Update build $BUILD_VERSION"
git subtree split --prefix build/web -b temp-deploy-branch
git push origin temp-deploy-branch:gh-pages --force
git branch -D temp-deploy-branch