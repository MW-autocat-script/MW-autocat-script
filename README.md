MW-autocat-script
=================

This is a bash script wrapper for Pywikipediabot that automatically adds new pages to a specified category based on its title.

Installation
================

Currently, this script is meant to be dumped as-is into the directory where Pywikipediabot is installed (i.e. newpagescat.sh is in the Pywikipediabot directory, and catscripts is a subdirectory there. In the future, specifying the Pywikipediabot directory in the script may be implemented.

Detailed Description
====================

This script was originally written for a Q&A wiki, and the arrangement and categories present reflect this. You will have to customize the script to meet your own needs.

There is no timer loop; it was designed to be launched automatically with cron. newpagescat.sh is the initial script, and all subscripts are spawned from it. First, newpagescat.sh runs pagegenerators.py to fetch new pages from the wiki, and strips out unwanted characters (such as line numbers). It then launches subscripts for each general subject area on the wiki. These scripts can either launch their own subscripts, or use egrep to find matching keywords and patterns in the page titles and dump them to a file for processing.

Pages were originally added by writing a separate expect script for each category (to feed the necessary data to category.py). Now, a single expect script (Categorize.sh) is used, and category names are passed via global variables.

The files that are created to contain the category lists are all stored where newpagescat.sh is stored. This may cause performance problems when using a file manager, but shouldn't be an issue for non-interactive use.