#!/usr/bin/env bash
# Builds the Cloudflare Pages output in public/.
# Cloudflare Pages runs this on every push: build command `bash build_tools/build.sh`,
# output directory `public`. Any failure (e.g. invalid JSON in data.min.json) fails the
# build, and Pages keeps serving the last good deployment.
set -euo pipefail

cd "$(dirname "$0")/.."

rm -rf public
mkdir public
cp data.min.json public/data.min.json
sha256sum public/data.min.json | awk '{print $1}' > public/rules.min.hash
node build_tools/minifyDataJSON.js "public/data.min.json" "public/data.minify.json"
test -s public/data.minify.json
sha256sum public/data.minify.json | awk '{print $1}' > public/rules.minify.hash

# Support old refs
mkdir public/data
cp public/data.min.json public/data/data.min.json
cp public/rules.min.hash public/data/rules.min.hash
cp public/data.minify.json public/data/data.minify.json
cp public/rules.minify.hash public/data/rules.minify.hash
