FROM pymultinest:latest
USER root
RUN pip3 install numpy scipy holoviews matplotlib numba cython nose tables pandas astropy jupyter 

RUN useradd -ms /bin/bash jovian
WORKDIR /home/jovian

USER jovian
RUN git clone https://github.com/timothydmorton/isochrones

USER root
RUN cd isochrones && python3 setup.py install

USER jovian

EXPOSE 8888
ENTRYPOINT jupyter notebook


