#!/bin/bash

if [ -f $HOME/.emacs ]
then
	echo ".emacs already exists. replace (y/n)?"
	read replace
	if [ "$replace" == "y" ] || [ "$replace" == "Y" ] || [ "$replace" == "yes" ] 
	then
		rm -f $HOME/.emacs
		cp .emacs $HOME
		echo "replaced existing .emacs ..."
	else
		echo "skipped existing .emacs ..."
	fi
else
	echo "no existing .emacs. create (y/n)?"
	read create
	if [ "$create" == "y" ] || [ "$create" == "Y" ] || [ "$create" == "yes" ]
	then
		cp .emacs $HOME
		echo "created .emacs ..."
	else
		echo "skipped ..."
	fi
fi

if [ -d $HOME/.emacs.d ]
then
	echo ".emacs.d dir already exists. replace (y/n)?"
	read replace
	if [ "$replace" == "y" ] || [ "$replace" == "Y" ] || [ "$replace" == "yes" ] 
	then
		rm -rf $HOME/.emacs.d
		mkdir -p $HOME/.emacs.d/themes && cp -r .emacs.d/* $HOME/.emacs.d  
		echo "replaced existing ~/.emacs.d ..."
	else
		echo "skipped existing ~/.emacs.d ..."
	fi
else
	echo "no existing .emacs.d dir. create (y/n)?"
	read create
	if [ "$create" == "y" ] || [ "$create" == "Y" ] || [ "$create" == "yes" ]
	then
		mkdir -p $HOME/.emacs.d/themes && cp -r .emacs.d/* $HOME/.emacs.d
		echo "created .emacs.d dir ..."
	else
		echo "skipped ..."
	fi
fi
