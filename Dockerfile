FROM nvidia/cuda:7.5-centos6

RUN yum update -y
RUN yum -y groupinstall "X Window System"
RUN yum install -y tcsh unzip SDL openssh-server wget
RUN yum install -y \
			gamin audiofile audiofile-devel e2fsprogs-libs\
			libXp\
			libXpm\
			pciutils\
			gstreamer-plugins-base\
			mesa-libGLw

ENV LC_ALL en_US.UTF-8
ENV QT_X11_NO_MITSHM=1
ENV MAYA_DISABLE_CIP=1
