# Docker image for basic Jenkins slave

FROM apemberton/jenkins-base
MAINTAINER Andy Pemberton <apemberton@cloudbees.com>

RUN apt-get update && apt-get install -y --no-install-recommends \
	git 

EXPOSE 22

ENTRYPOINT ["/usr/sbin/sshd", "-D"]

CMD ["-p 22"]