# README

## get started with the example site

Initialize a new hugo site
```
hugo new site mySite
cd mySite

```

Add theme
```
git init

git commit --allow-empty -m "Initial commit"

git submodule add https://github.com/Kontralto/hugo-page-builder themes/hugo-page-builder

git add -A

git commit -m "Add Hugo Page Builder theme"

```

Bootstrap the seed site
```
sh themes/hugo-page-builder/scripts/quickstart.sh

```

Run local server: 
```
sh scripts/serve.sh

```