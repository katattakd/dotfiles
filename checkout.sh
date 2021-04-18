#!/bin/sh
rm ~/checkout
rsync -am -v $@ ~/checkout
