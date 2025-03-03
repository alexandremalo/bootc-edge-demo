FROM registry.redhat.io/rhel9/rhel-bootc

#Enable custom bootc update mechanism
COPY files/custom-bootc-apply-service.conf /etc/systemd/system/bootc-fetch-apply-updates.service.d/
COPY files/custom-bootc-apply-timer.conf /etc/systemd/system/bootc-fetch-apply-updates.timer.d/
COPY files/bootc-fetch-only.service /etc/systemd/system/
COPY files/bootc-fetch-only.timer /etc/systemd/system/
#RUN rm /usr/lib/systemd/system/ostree-finalize-staged.path && \
RUN ln -sf /etc/systemd/system/bootc-fetch-only.timer /etc/systemd/system/timers.target.wants/bootc-fetch-only.timer

RUN echo "test-alex-malo-7" >> /opt/custom-welcom-file.txt
