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
RUN git clone https://github.com/pallebh/sms2mqtt.git

# installing 
RUN apk add --no-cache mosquitto
RUN git clone https://github.com/pallebh/mqtt2sms.git


# Copy data
#COPY run.sh /
#RUN chmod a+x /run.sh

#CMD [ "/run.sh" ]
