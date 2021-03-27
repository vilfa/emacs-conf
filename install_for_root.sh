if [ ! "$(whoami)" = "root" ]
then
    echo "this script requires superuser privileges."
    exit -1 
fi

if [ -f /root/.emacs ]
then    
    echo "root user .emacs already exists. replace (y/n)?"
    read replace
    if [ "$replace" == "y" ] || [ "$replace" == "Y" ] || [ "$replace" == "yes" ] 
    then
	rm -f /root/.emacs
	cp .emacs /root
	echo "replaced existing root user .emacs ..."
    else
	echo "skipped existing root user .emacs ..."
    fi
else
    echo "no existing root user .emacs. create (y/n)?"
    read create
    if [ "$create" == "y" ] || [ "$create" == "Y" ] || [ "$create" == "yes" ]
    then
	cp .emacs /root
	echo "created root user .emacs ..."
    else
	echo "skipped ..."
    fi
fi

if [ -d /root/.emacs.d ]
then
    echo "root user .emacs.d dir already exists. replace (y/n)?"
    read replace
    if [ "$replace" == "y" ] || [ "$replace" == "Y" ] || [ "$replace" == "yes" ] 
    then
	rm -rf /root/.emacs.d
	mkdir -p /root/.emacs.d && cp -r .emacs.d/* /root/.emacs.d
	echo "replaced existing root user ~/.emacs.d ..."
    else
	echo "skipped existing root user ~/.emacs.d ..."
    fi
else
    echo "no existing root user .emacs.d dir. create (y/n)?"
    read create
    if [ "$create" == "y" ] || [ "$create" == "Y" ] || [ "$create" == "yes" ]
    then
	mkdir -p /root/.emacs.d && cp -r .emacs.d/* /root/.emacs.d
	echo "created root user .emacs.d dir ..."
    else
	echo "skipped ..."
    fi
fi

