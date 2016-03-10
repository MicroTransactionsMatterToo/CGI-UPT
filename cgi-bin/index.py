#!/usr/bin/env python3
import cgi
import cgitb
cgitb.enable()

# Headers so it won't crap itself trying to load
print("Content-Type: text/html")
print() # Need a blank line to seperate headers cause otherwise it breaks
def outputHTML():
    with open("/usr/lib/cgi-bin/cgi-html/base.html") as file:
        for line in file:
            print(line)