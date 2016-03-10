#!/usr/bin/env python3
import cgi
import cgitb
cgitb.enable()

# Headers so it won't crap itself trying to load
print("Content-Type: text/html")
print() # Need a blank line to seperate headers cause otherwise it breaks
def headers():
    print("<html>")
    print("<head>")
    print("<title>Testing</title>")
    print("</head>")
    print("<body>")
    print("<h1>Hello there m80</h1>")
    print("</body>")
    print("</html>")

headers()