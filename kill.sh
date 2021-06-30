#!/bin/bash
ps -ef | grep grey| grep -v grep | awk '{print $2}' | xargs kill -9