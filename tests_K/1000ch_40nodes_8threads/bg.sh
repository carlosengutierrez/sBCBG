#!/bin/sh 
export HOME="." 
export PATH="/opt/klocal/Python-2.7/bin:../bin:../gsl-2.1.install/bin:${PATH}" 
export LD_LIBRARY_PATH="/opt/klocal/Python-2.7/lib:/opt/klocal/cblas/lib:/opt/local/Python-2.7.3/lib:../lib:../gsl-2.1.install/lib:${LD_LIBRARY_PATH}" 
export NEST_DATA_DIR="../share/nest" 
export PYTHONPATH="../lib/python2.7/site-packages" 
. ../bin/nest_vars.sh 
mkdir ./log 
python testChannelBG.py 
