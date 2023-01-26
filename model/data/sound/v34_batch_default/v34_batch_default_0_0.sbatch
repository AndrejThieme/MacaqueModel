#!/bin/bash
#SBATCH --job-name=v34_batch_default_0_0
#SBATCH -A icei_H_King
#SBATCH -t 04:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH -o data/sound/v34_batch_default/v34_batch_default_0_0.run
#SBATCH -e data/sound/v34_batch_default/v34_batch_default_0_0.err
#SBATCH --mail-user=andrej.thieme@campus.tu-berlin.de
#SBATCH --mail-type=end

#SBATCH --partition=g100_usr_prod
source ~/.bashrc
cd /g100/home/userexternal/athieme0/Macaque_auditory_thalamocortical_model_data/model
srun -n 32 nrniv -python -mpi init.py simConfig=data/sound/v34_batch_default/v34_batch_default_0_0_cfg.json netParams=data/sound/v34_batch_default/v34_batch_default_netParams.py
wait
    