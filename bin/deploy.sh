#!/bin/bash

REMOTE_ROOT="/var/www/tekkie.me"

echo "========================="
echo "= tekkie.me deployer    ="
echo "========================="

echo
echo "Step 1: PACKAGE"
LATEST_TAG=$(git describe --tags)
PACKAGE="$LATEST_TAG.zip"
echo "... naming: $PACKAGE"

echo "... cleanup first"
rm -rf $PACKAGE

echo "... generate static files"
vendor/bin/sculpin generate --env=prod

echo "... remove unneeded files"
rm -rf output_prod/themes/tekkie/cv/node_modules

echo "... create archive"
zip -r $PACKAGE output_prod -q

echo "... done!"

echo
echo "Step 2: DEPLOY"
echo "... copy package remotely"
scp $PACKAGE hosting@5.9.45.114:$REMOTE_ROOT

echo
echo "Step 3: INSTALL"
echo "... unpack to "
ssh hosting@5.9.45.114 "cd $REMOTE_ROOT; pwd; unzip $LATEST_TAG.zip; mv output_prod $LATEST_TAG"

echo "... ^^ was executed on the remote server!"

echo "TODO: move prod symlink to new folder"

echo
echo "Step 4: CHECK"

echo "TODO curl homepage and check it renders"

echo
echo "Step 5: CLOSE"
echo "... bye!"
