#!/bin/sh -x

# expects REPOSITORY_USERNAME & REPOSITORY_PASSWORD to be set
# and ../build contains the resources

echo "Downloading bnd"
curl https://repo1.maven.org/maven2/biz/aQute/bnd/biz.aQute.bnd/5.2.0/biz.aQute.bnd-5.2.0.jar >bnd.jar

echo Build bundle
java -jar bnd.jar build

echo $?

ls com.heilaiq.portal.ui.webresource/generated/com.heilaiq.portal.ui.webresource.jar

echo Release
java -jar bnd.jar release -w

