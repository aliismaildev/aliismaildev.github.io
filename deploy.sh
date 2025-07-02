#!/bin/bash

BUILD_VERSION=$(date +%s)
echo "Building version $BUILD_VERSION"

# Build with version passed in (optional for Dart use)
flutter build web --dart-define=BUILD_VERSION=$BUILD_VERSION || exit 1

# Update the serviceWorkerVersion in index.html
sed -i '' "s/const serviceWorkerVersion = \".*\";/const serviceWorkerVersion = \"$BUILD_VERSION\";/g" build/web/index.html

# OPTIONAL: Update service worker cache name to avoid stale caches
sed -i '' "s/flutter-app-cache/flutter-app-cache-$BUILD_VERSION/g" build/web/flutter_service_worker.js

# Deploy to gh-pages branch
git add build/web -f
git commit -m "Update build $BUILD_VERSION"
git subtree split --prefix build/web -b temp-deploy-branch
git push origin temp-deploy-branch:gh-pages --force
git branch -D temp-deploy-branch