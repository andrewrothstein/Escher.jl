FROM andrewrothstein/julia:ubuntu_trusty
MAINTAINER "Andrew Rothstein" andrew.rothstein@gmail.com
RUN apt-get install -y build-essential
RUN julia -e 'Pkg.update(); Pkg.add("Escher")'
ENV JULIA_VER v0.3
ENV JULIA_PKG_DIR ~/.julia/${JULIA_VER}
RUN ln -s ${JULIA_PKG_DIR}/Escher/bin/escher /usr/local/bin/
EXPOSE 5555
WORKDIR ${JULIA_PKG_DIR}/Escher/examples
CMD escher --serve