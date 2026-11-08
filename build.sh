#!/bin/sh
# Copies index.html to find.html, future.html, ... so clean addresses (tricitiesvolunteer.ca/find) work on GitHub Pages.
# Run after every change to index.html.
cd "$(dirname "$0")"
for page in find future beyond guide; do
  sed "s#<meta property=\"og:url\" content=\"https://tricitiesvolunteer.ca/\">#<meta property=\"og:url\" content=\"https://tricitiesvolunteer.ca/$page\">#" index.html > "$page.html"
done
cp index.html 404.html
