#!/bin/sh
rm -rf ~/checkout
rsync -avm $@ ~/checkout
