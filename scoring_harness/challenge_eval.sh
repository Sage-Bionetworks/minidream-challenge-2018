#!/usr/bin/env bash

# Automation of validation and scoring
script_dir=$(dirname $0)
if [ ! -d "$script_dir/log" ]; then
  mkdir $script_dir/log
fi
source ~/miniconda/bin/activate ~/miniconda/envs/minidream


#---------------------
# Validate submissions
#---------------------
# Remove --send-messages to do rescoring without sending emails to participants
# python $script_dir/challenge.py -u "synapse user here" --send-messages --notifications validate --all >> $script_dir/log/score.log 2>&1

#--------------------
# Score submissions
#--------------------
python $script_dir/challenge.py -u "jaeddy" --send-messages --notifications score --all >> $script_dir/log/score.log 2>&1
