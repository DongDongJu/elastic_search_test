#!/bin/bash

LOGPATH=/Users/DongJu/Desktop/workspace/elastic_search_test/logs


#kibana logs

rm -rf $LOGPATH/kibana_running_logs/*
rm -rf $LOGPATH/kibana_system_logs/*



#elastic logs

rm -rf $LOGPATH/elastic_system_logs/*
rm -rf $LOGPATH/elastic_running_logs/*
rm -rf $LOGPATH/elastic_system_data_logs/*

