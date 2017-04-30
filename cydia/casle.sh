rm -r Packages*

dpkg-scanpackages -m ./debs /dev/null > Packages
bzip2 -fks Packages

git add --all
git commit -m "$*"
git push