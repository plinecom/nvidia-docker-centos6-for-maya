FROM nvidia/cuda:7.5-centos6

RUN yum update -y
RUN yum -y groupinstall "X Window System"
RUN yum install -y tcsh unzip SDL openssh-server wget
RUN yum install -y epel-release
RUN rpm -ivh http://li.nux.ro/download/nux/dextop/el6Workstation/x86_64/nux-dextop-release-0-2.el6.nux.noarch.rpm
RUN cd /etc/yum.repos.d && wget http://pkgrepo.linuxtech.net/el6/release/linuxtech.repo
RUN yum install -y libcaca \
			libtiger\
			openal\
			game-music-emu\
			vlc\
			exfat-utils\
			libXp\
			gcc\
			cmake\
			libXmu-devel\
			libXi-devel\
			freeglut freeglut-devel\
			gcc-c++\
			xinetd\
			git\
			xterm\
			rpm-build\
			readline-devel\
			kernel-devel\
			gimp\
			gstreamer-plugins-base-devel\
			ntfs-3g\
			tcl\
			tk\
			bltk\
			blt\
			tsclient\
			opencv\
			qt-devel\
			boost-devel\
			python-devel\
			numpy\
			gcc-gfortran\
			scipy\
			perl-devel\
			perl-ExtUtils-Embed\
			perl-ExtUtils-ParseXS\
			python-setuptools\
			fio\
			rpmdevtools\
			netcdf\
			libuuid-devel\
			redhat-lsb-core\
			mesa-libGLw

ENV DISPLAY :0
ENV LC_ALL en_US.UTF-8

