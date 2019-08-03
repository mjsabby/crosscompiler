FROM centos7_base
WORKDIR /home/buildmaster
COPY --chown=buildmaster:buildmaster *.sh /home/buildmaster/
COPY --chown=buildmaster:buildmaster *.config /home/buildmaster/
CMD su buildmaster -c "/bin/bash build_linux_toolchain.sh"
