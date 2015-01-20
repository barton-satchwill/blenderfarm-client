#!/usr/bin/env python

import ConfigParser
import os, sys

config_file = "../share/blenderfarm/blenderfarm.config"

def getConfig():
	config_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), config_file)
	if not os.path.isfile(config_path):
		sys.stderr.write("\ncan't find configuration file '%s'\n\n" % config_path)
		sys.exit()
	Config = ConfigParser.ConfigParser()
	Config.read(config_path)
	return Config