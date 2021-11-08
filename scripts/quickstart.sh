git init

git commit --allow-empty -m "Initial commit"

git submodule add https://github.com/Kontralto/hugo-page-builder themes/hugo-page-builder

git add -A

git commit -m "Add Hugo Page Builder theme"

git add -A
git commit -m "Initialize project with quickstart site from Hugo Page Builder"