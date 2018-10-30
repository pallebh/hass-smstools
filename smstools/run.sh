CONFIG_PATH=config.json
SMSDCONF_PATH=/etc/smsd.conf

echo "" > $SMSDCONF_PATH
INIT=$(jq --raw-output ".options.smstools.init" $CONFIG_PATH)
if [ -z $INIT ] ;
	then echo '#init = ""' >> $SMSDCONF_PATH ;
	else echo "init = " >> $SMSDCONF_PATH ;
fi

PIN=$(jq --raw-output ".options.smstools.pin" $CONFIG_PATH)
if [ -z $PIN ] ;
	then echo '#pin = ""' >> $SMSDCONF_PATH ;
	else echo "pin = " $PIN >> $SMSDCONF_PATH ;
fi
	

DEVICE=$(jq --raw-output ".options.smstools.device" $CONFIG_PATH)
echo "device = " $DEVICE >> $SMSDCONF_PATH

BAUDRATE=$(jq --raw-output ".options.smstools.baudrate" $CONFIG_PATH)
echo "baudrate = " $BAUDRATE >> $SMSDCONF_PATH

cat $SMSDCONF_PATH 
smsd -t &
tail -f /var/log/smsd.log
