#!/bin/bash
flutter build web || exit 1
git add build/web -f
git commit -m "Update build"
git subtree split --prefix build/web -b temp-deploy-branch
git push origin temp-deploy-branch:gh-pages --force
git branch -D temp-deploy-branch