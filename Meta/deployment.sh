#!/bin/bash

# Thank you NamelessCoder: https://gist.github.com/NamelessCoder/8714035
# phase one: core install

# Pro tip: edit the script and use this repository instead to try out the
# codename "Awesome Ocelot" project - which should be even faster than the
# bare 6.2 core: https://github.com/NamelessCoder/TYPO3.CMS.git
# Live demo of "Awesome Ocelot" is at http://staging.namelesscoder.net

#coloring stuff
RED='\033[0;31m'
green='\e[0;32m'
endColor='\e[0m'

git clone https://github.com/TYPO3/TYPO3.CMS.git --single-branch --branch TYPO3_6-2
touch FIRST_INSTALL

ln -s TYPO3.CMS typo3_src
ln -s typo3_src/index.php
ln -s typo3_src/typo3
echo "Now open the TYPO3 backend and complete the install wizard"
echo "Remember: You must add the _cli_lowlevel backend user!"
read -p "Press any key to continue AFTER you complete the install wizard and create the _cli_lowlevel user"

# phase two: extension fetching and installation

echo "Cloning news repository https://git.typo3.org/TYPO3CMS/Extensions/news.git"
git clone https://git.typo3.org/TYPO3CMS/Extensions/news.git --single-branch --branch master  typo3conf/ext/news &> /dev/null
if [ $? -eq 0 ]; then
	echo -e "${green}Cloned news repository ${endColor}"
else
	echo -e "${RED}ERROR: Failed to clone news repository ${endColor}"
	exit 1
fi

echo "Cloning gridelements repository https://github.com/TYPO3-extensions/gridelements.git"
git clone https://github.com/TYPO3-extensions/gridelements.git --single-branch --branch master typo3conf/ext/gridelements &> /dev/null
if [ $? -eq 0 ]; then
	echo -e "${green}Cloned gridelements repository ${endColor}"
else
	echo -e "${RED}ERROR: Failed to clone gridelements repository ${endColor}"
	exit 1
fi

echo "Cloning DCE repository https://bitbucket.org/ArminVieweg/dce.git"
git clone https://bitbucket.org/ArminVieweg/dce.git --single-branch --branch master typo3conf/ext/dce &> /dev/null
if [ $? -eq 0 ]; then
	echo -e "${green}Cloned DCE repository ${endColor}"
else
	echo -e "${RED}ERROR: Failed to clone DCE repository ${endColor}"
	exit 1
fi

echo "Cloning RealURL repository https://github.com/TYPO3-extensions/realurl.git"
git clone https://github.com/TYPO3-extensions/realurl.git typo3conf/ext/realurl &> /dev/null
#checkout tag 1_12_8, master is currently broken
cd typo3conf/ext/realurl/
git checkout 1_12_8
cd ../../..
if [ $? -eq 0 ]; then
	echo -e "${green}Cloned RealURL repository ${endColor}"
else
	echo -e "${RED}ERROR: Failed to clone RealURL repository ${endColor}"
	exit 1
fi

echo "Cloning myt3base repository https://github.com/damisau/myt3base.git"
git clone https://github.com/damisau/myt3base.git --single-branch --branch master typo3conf/ext/monsunmedia_base &> /dev/null
if [ $? -eq 0 ]; then
	echo -e "${green}Cloned myt3base repository ${endColor}"
else
	echo -e "${RED}ERROR: Failed to clone myt3base repository ${endColor}"
	exit 1
fi

echo -e "\n ###########################################\n"
echo -e "\n Finished cloning repositories, installing..\n"
echo -e "\n ###########################################\n"

#install the extensions
php typo3/cli_dispatch.phpsh extbase extension:install realurl
if [ $? -eq 0 ]; then
	echo -e "${green}Installed realurl extension${endColor}"
else
	echo -e "${RED}ERROR: Failed to install realurl extension ${endColor}"
fi

php typo3/cli_dispatch.phpsh extbase extension:install version
if [ $? -eq 0 ]; then
	echo -e "${green}Installed version extension${endColor}"
else
	echo -e "${RED}ERROR: Failed to install version extension ${endColor}"
fi

php typo3/cli_dispatch.phpsh extbase extension:install news
if [ $? -eq 0 ]; then
	echo -e "${green}Installed news extension${endColor}"
else
	echo -e "${RED}ERROR: Failed to install news extension ${endColor}"
fi

php typo3/cli_dispatch.phpsh extbase extension:install gridelements
if [ $? -eq 0 ]; then
	echo -e "${green}Installed gridelements extension${endColor}"
else
	echo -e "${RED}ERROR: Failed to install gridelements extension ${endColor}"
fi

php typo3/cli_dispatch.phpsh extbase extension:install dce
if [ $? -eq 0 ]; then
	echo -e "${green}Installed DCE extension${endColor}"
else
	echo -e "${RED}ERROR: Failed to install DCE extension ${endColor}"
fi

php typo3/cli_dispatch.phpsh extbase extension:install recycler
if [ $? -eq 0 ]; then
	echo -e "${green}Installed recycler extension${endColor}"
else
	echo -e "${RED}ERROR: Failed to install recycler extension ${endColor}"
fi

php typo3/cli_dispatch.phpsh extbase extension:install monsunmedia_base
if [ $? -eq 0 ]; then
	echo -e "${green}Installed monsunmedia_base extension${endColor}"
else
	echo -e "${RED}ERROR: Failed to install monsunmedia_base extension ${endColor}"
fi

echo -e "${green}Done.${endColor}"