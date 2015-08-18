FROM andrewrothstein/julia:ubuntu_trusty
MAINTAINER "Andrew Rothstein" andrew.rothstein@gmail.com
RUN apt-get install -y build-essential
RUN julia -e 'Pkg.add("Escher")'