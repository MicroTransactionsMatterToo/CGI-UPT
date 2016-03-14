#!/usr/bin/env python3
import cgi
import cgitb
cgitb.enable()

# Headers so it won't crap itself trying to load
def outputHTML():
  	with open("/Applications/MAMP/htdocs/base.html") as file:
    		for line in file:
    			if str(line) == "<!-- ip -->":
    				print("ip here")
    			else:
    				stringLine = str(line)
    				print(stringLine, end="", flush=True)

outputHTML()
