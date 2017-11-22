#!/bin/bash -x 

#!/bin/bash -x 
#PJM -m b 
#PJM -m e 
#PJM --rsc-list "rscgrp=small" 
#PJM --rsc-list "node=10" 
#PJM --rsc-list "elapse=23:30:00" 
#PJM --mpi "proc=10" 
#PJM -s 
#PJM --stg-transfiles all 
#PJM --mpi "use-rankdir" 
#PJM --stgin "rank=* ./*.py %r:./" 
#PJM --stgin "rank=* ./bg.sh %r:./" 
#PJM --stgin "rank=* ./*.csv %r:./" 
#PJM --stgin-dir "rank=0 ../../nest-2.12.0-install-gsl/bin 0:../bin recursive=7" 
#PJM --stgin-dir "rank=0 ../../nest-2.12.0-install-gsl/lib 0:../lib recursive=7" 
#PJM --stgin-dir "rank=0 ../../nest-2.12.0-install-gsl/share 0:../share recursive=7" 
#PJM --stgin "rank=0 ../../gsl.tgz 0:../" 
#PJM --stgout "rank=* %r:./log/* ./log/ stgout=all" 

. /work/system/Env_base 
export FLIB_FASTOMP=FALSE 
tar -zxf ../gsl.tgz -C ../ 
rm -f ../gsl.tgz 
mpirun -np 10 sh bg.sh 
echo "finish"