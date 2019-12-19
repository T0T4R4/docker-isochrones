#!/bin/bash

 docker run -d --network=host -p 8888:8888 -ti isochrones  --name isochrones . 
