#!/bin/bash
#SBATCH --job-name=v34_batch68_0_1
#SBATCH -A csd403
#SBATCH -t 06:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=10
#SBATCH -o data/v34_batch68/v34_batch68_0_1.run
#SBATCH -e data/v34_batch68/v34_batch68_0_1.err
#SBATCH --mail-user=andrej.thieme@campus.tu-berlin.de
#SBATCH --mail-type=end


source ~/.bashrc
cd /home/users/a/andrejthieme/model/Macaque_auditory_thalamocortical_model_data/model
mpirun -n 10 nrniv -python -mpi init.py simConfig=data/v34_batch68/v34_batch68_0_1_cfg.json netParams=data/v34_batch68/v34_batch68_netParams.py
wait
    