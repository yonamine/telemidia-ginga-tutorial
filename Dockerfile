FROM ubuntu:latest
LABEL Description="Telemidia - Ginga"
ENV DISPLAY=:0
ENV LD_LIBRARY_PATH=/usr/local/lib
RUN apt update
# In case of libgstreamer-plugins-bad, a dialog to choose the geograhic area is shown.
# In order to ignore it, just run the following options:
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt install -y build-essential git cmake ninja-build pkg-config dpkg-dev dh-autoreconf libltdl-dev liblua5.3-dev libglib2.0-dev libpango1.0-dev librsvg2-dev libsoup2.4-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libfontconfig1-dev libgtk-3-dev gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav libgssdp-1.2-dev libjsoncpp-dev x11vnc xvfb xorg xauth -qq
WORKDIR /work-dir
RUN cd /work-dir && git clone http://github.com/TeleMidia/nclua && cd nclua && ./bootstrap && ./configure --without-nclua-gst --without-nclua-gtk && make install
RUN git clone https://github.com/TeleMidia/ginga && cd ginga && mkdir -p BUILD && cmake -S . -B BUILD -G "Ninja" && cmake --build BUILD

