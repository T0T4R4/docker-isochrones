FROM pymultinest:latest
USER root
RUN pip3 install numpy scipy holoviews matplotlib numba cython nose tables pandas astropy jupyter 

RUN cd ~ && git clone https://github.com/timothydmorton/isochrones 
RUN cd ~/isochrones && python3 setup.py install

USER root

EXPOSE 8888
ENTRYPOINT jupyter notebook --allow-root


