#!/bin/sh
rsync -am --delete --delete-excluded -v $@ ~/Desktop/checkout
