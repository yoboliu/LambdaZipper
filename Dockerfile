FROM amazonlinux:2017.03
RUN yum -y install git \
	python36 \
	python36-pip \
	zip
RUN python3 -m pip install --upgrade pip

RUN yum -y install gcc
RUN yum -y install python36*

ADD package.sh /
ENTRYPOINT ["/package.sh"]
