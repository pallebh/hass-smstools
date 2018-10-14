#ARG BUILD_ARG
#FROM $BUILD_FROM

FROM alpine

# Add env
ENV LANG C.UTF-8

# Setup base
RUN apk add --no-cache smstools
RUN apk add --no-cache usb-modeswitch

#python install
RUN apk add --no-cache python
RUN apk add --no-cache py-pip
RUN pip install --upgrade pip
RUN pip install paho-mqtt
RUN pip install docopt

RUN apk add --no-cache git

# installing  
#RUN git clone https://github.com/pallebh/sms2mqtt.git
#cp phonenumbers.json /sms2mqtt/phonenumbers.json

# installing 
#RUN apk add --no-cache mosquitto
#RUN git clone https://github.com/pallebh/mqtt2sms.git
 
# Copy data
COPY smsd.conf /etc/smsd.conf

RUN mkdir /var/spool/sms/failed
RUN chown smsd /var/spool/sms/failed

RUN mkdir /var/spool/sms/sent
RUN chown smsd /var/spool/sms/sent

RUN mkdir /var/run/smsd
RUN chown smsd /var/run/smsd

RUN mkdir /var/log/smsd/smsd_stats
RUN chown smsd /var/run/smsd

#COPY run.sh /
#RUN chmod a+x /run.sh

#CMD [ "/run.sh" ]

