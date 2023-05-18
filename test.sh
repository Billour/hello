#!/bin/bash
#Author:
#Date : 20230515
#Version: 0.1
#Email: billourcode@gmail.com

PATH_USR='/usr/share/oem-workaround/timesyncd.conf'
PATH_ETC='/etc/systemd/timesyncd.conf'

PATH_SH_USR="/usr/bin/test.sh"
PATH_T="test.sh"

MY_MSG='this is a test from YuTai(Billour) Ou'

{
	# + replace_file Start
	if test -f "$PATH_USR"; then
		sudo rm $PATH_USR
	fi

	if [ ! -d "/usr/share/oem-workaround/" ]; then
		sudo mkdir "/usr/share/oem-workaround/"
	fi

	sudo touch $PATH_USR
	echo "+ replace_file=$PATH_USR"

	#END of + replace_file


	# + taget Start
	sudo touch $PATH_ETC
	echo "+ target=$PATH_ETC"

	# END of + taget

	echo "+ echo $MY_MSG"

	echo $MY_MSG
	echo "+ exit 0"
	

	echo "Processing triggers for man-db (2.9.1-1)..."
	echo "Processing triggers for install-infor(6.7.0.dfsg.2-5)..."


	echo " ";

	#dpkg Start---
	if test -f "$PATH_T"; then
		sudo rm $PATH_T
	fi

	if test -f "$PATH_SH_USR"; then
		sudo rm $PATH_SH_USR
	fi


	#sudo touch $PATH_T
	sudo echo '#!/bin/bash' > $PATH_T
	#sudo chmod u+x $PATH_T
	sudo echo 'echo hello: \/usr\/bin\/test.sh ' >> $PATH_T
	sudo echo 'echo this is a test from YuTai\(Billour\) Ou ' >> $PATH_T
	sudo echo 'exit 0' >> $PATH_T
	sudo chmod 777 $PATH_T
	sudo cp $PATH_T $PATH_SH_USR
	sudo chmod 777 $PATH_SH_USR
	#delete the temp file
	sudo rm $PATH_T

	#Exec Result

	sudo dpkg -S {$PATH_SH_USR}; $PATH_SH_USR

	#sudo $PATH_SH_USR

	#END---

	exit 0
} || {

	exit 9
}
