#!/bin/sh
rsync -amLR --delete -v $@ ~/Desktop/remote_backup
