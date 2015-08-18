FROM andrewrothstein/julia:ubuntu_trusty
MAINTAINER "Andrew Rothstein" andrew.rothstein@gmail.com
RUN apt-get install -y build-essential
RUN julia -e 'Pkg.update(); Pkg.add("Escher")'
RUN ln -s ~/.julia/v0.3/Escher/bin/escher /usr/local/bin/
EXPOSE 5555
CMD escher --serve