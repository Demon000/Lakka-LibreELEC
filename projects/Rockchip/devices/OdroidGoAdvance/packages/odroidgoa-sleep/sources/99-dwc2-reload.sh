#!/bin/bash

case $1 in
	pre)
		modprobe -r dwc2
		;;
	post)
		modprobe -r dwc2
		modprobe -i dwc2
		;;
esac
