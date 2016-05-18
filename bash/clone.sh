#!/bin/bash
​
RED='\033[0;31m'
NC='\033[0m'
​
if [ -z "$WORKSPACE" ]; then
  echo -e "${RED}WORKSPACE env variable has not been set."
  echo "Please set it or add it to your bash_profile before running."
  echo -e "Example: export WORKSPACE=~/my-workspace${NC}"
  exit 1
fi
​
if [ -z "$CONFIG_AU" ]; then
  echo -e "${RED}CONFIG_AU env variable has not been set."
  echo "Please set it or add it to your bash_profile before running."
  echo -e "Example: export CONFIG_AU=~/my-workspace/config-au${NC}"
  exit 1
fi
​
if [ -z "$CONFIG_UK" ]; then
  echo -e "${RED}CONFIG_UK env variable has not been set."
  echo "Please set it or add it to your bash_profile before running."
  echo -e "Example: export CONFIG_UK=~/my-workspace/config-uk${NC}"
  exit 1
fi
​
apps=(`cat $CONFIG_AU/conf/apps/grails.yaml $CONFIG_UK/conf/apps/grails.yaml | sed 's/:.*$//g' | sort -u`)
​
while read app; do
  git clone git@github.com:/siteminder-au/$app.git $WORKSPACE/$app
done < <(echo "${apps[@]}" | tr ' ' '\n')