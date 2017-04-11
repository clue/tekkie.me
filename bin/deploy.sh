#!/bin/bash

REMOTE_ROOT="/var/www/tekkie.me"
REMOTE_IP="5.9.45.114"
REMOTE_USER="hosting"

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
zip -r $PACKAGE output_prod -q # -q for "quiet"

echo "... done!"

echo
echo "Step 2: DEPLOY"
echo "... copy package remotely"
scp $PACKAGE hosting@5.9.45.114:$REMOTE_ROOT

echo
echo "Step 3: INSTALL"
echo "... unpack to $REMOTE_ROOT"
ssh $REMOTE_USER@$REMOTE_IP "cd $REMOTE_ROOT; pwd; unzip -q $LATEST_TAG.zip; mv output_prod $LATEST_TAG"
ssh $REMOTE_USER@$REMOTE_IP "cd $REMOTE_ROOT; mv main old; ln -s $LATEST_TAG main"

echo
echo "Step 4: CHECK"

HOMEPAGE_STATUS=$(curl -sL -w "%{http_code}\\n" "https://tekkie.me/" -o /dev/null)
echo "... check homepage HTTP status: $HOMEPAGE_STATUS"

echo
echo "Step 5: CLEANUP"
rm -rf $PACKAGE
echo "... removed local archive; bye!"
