ARG BUILD_ARG
FROM $BUILD_FROM

FROM alpine

# Add env
ENV LANG C.UTF-8

# install json quering tool
RUN apk add --no-cache jq


# switching modem from usb to modem mode
RUN apk add --no-cache usb-modeswitch

# the sms gateway
RUN apk add --no-cache smstools

# Copy data
COPY smsd.conf /etc/smsd.conf


# mkdir for smsmtools
RUN mkdir /var/spool/sms/failed
RUN mkdir /var/spool/sms/sent
RUN mkdir /var/run/smsd
RUN mkdir /var/log/smsd/smsd_stats

RUN chown smsd /var/spool/sms/failed
RUN chown smsd /var/spool/sms/sent
RUN chown smsd /var/run/smsd
RUN chown smsd /var/log/smsd/smsd_stats

# fix stdout problem

# Copy data
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
