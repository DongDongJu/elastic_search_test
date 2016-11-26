#!/bin/bash

ELA_PID=$(ps | grep elasticsearch | awk 'NR==1{print $1}' | cut -d' ' -f1)
KIBANA_PID=$(ps | grep kibana | awk 'NR==1{print $1}' | cut -d' ' -f1)

kill $ELA_PID
kill $KIBANA_PID
