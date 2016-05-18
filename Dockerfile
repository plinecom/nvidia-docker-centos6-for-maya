FROM nvidia/cuda:7.5-centos6

RUN yum update -y
RUN yum -y groupinstall "X Window System"
RUN yum install -y tcsh unzip SDL openssh-server wget
RUN yum install -y epel-release
RUN rpm -ivh http://li.nux.ro/download/nux/dextop/el6Workstation/x86_64/nux-dextop-release-0-2.el6.nux.noarch.rpm
RUN cd /etc/yum.repos.d && wget http://pkgrepo.linuxtech.net/el6/release/linuxtech.repo
RUN yum install -y libcaca \
			openal\
			gamin audiofile audiofile-devel e2fsprogs-libs\
			libXp\
			libXpm\
			pciutils\
			gstreamer-plugins-base\
			freeglut freeglut-devel\
			readline-devel\
			redhat-lsb-core\
			mesa-libGLw

ENV DISPLAY :0
ENV LC_ALL en_US.UTF-8

