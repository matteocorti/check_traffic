#!/bin/sh

VERSION=$(grep "our\ \$VERSION\ =\ " check_traffic | sed "s/^[^']*'\([0-9.]*\)';/\1/")

echo "Publishing release ${VERSION}"

echo 'RELEASE_NOTES.md:'
echo '------------------------------------------------------------------------------'

cat RELEASE_NOTES.md

echo '------------------------------------------------------------------------------'

echo 'Did you update the RELEASE_NOTES.md? '
read -r ANSWER
if [ "x${ANSWER}" = "xy" ]; then

    perl Makefile.PL
    make dist
    gh release create "v${VERSION}" --title "check_traffic-${VERSION}" --notes-file RELEASE_NOTES.md "check_traffic-${VERSION}.tar.gz"

    # fetch the new tag
    git pull

fi
