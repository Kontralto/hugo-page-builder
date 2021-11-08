cp -r themes/hugo-page-builder/example-sites/seed/* .
cp themes/hugo-page-builder/example-sites/seed/.gitignore .

rm config.toml config.theme-dev.sh scripts/serve.theme-dev.sh

git add -A
git commit -m "Initialize project with quickstart site from Hugo Page Builder"