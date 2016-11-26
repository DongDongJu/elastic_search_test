#!/bin/bash

LOGPATH=/Users/DongJu/Desktop/workspace/elastic_search_test/logs
ELA_RUNLOGFOLDER=elastic_running_logs
KIBANA_RUNLOG_FOLDER=kibana_running_logs

TI=$(date +"%y%m%d-%H%M")

elasticsearch > $LOGPATH/$ELA_RUNLOGFOLDER/$TI.ela.log &
sleep 10
kibana > $LOGPATH/$KIBANA_RUNLOG/$TI.kibana.log &

