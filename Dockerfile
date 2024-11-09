FROM ubuntu:24.04
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Berlin
RUN echo "Europe/Berlin" > /etc/timezone
RUN apt-get update && apt-get -y update && apt-get -y upgrade
RUN apt-get install -y jq curl
RUN apt-get install -y texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-lang-german texlive-xetex
RUN apt-get install -y netpbm
RUN apt-get install -y gnuplot
RUN apt-get install -y python3 pip
RUN pip install --break-system-packages pandoc-latex-environment
ADD download_and_install_pandoc.sh /tmp/download_and_install_pandoc.sh
RUN bash /tmp/download_and_install_pandoc.sh
ADD download_and_install_eisvogel.sh /tmp/download_and_install_eisvogel.sh
RUN mkdir -p /home/ubuntu/.local/share/pandoc/templates/
RUN bash /tmp/download_and_install_eisvogel.sh
ADD letter.latex /home/ubuntu/.local/share/pandoc/templates/letter.latex
WORKDIR /data