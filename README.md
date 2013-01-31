MW-autocat-script
=================

This is a bash script wrapper for Pywikipediabot that automatically adds new pages to a specified category based on its title.

Installation
================

The script directory can be placed anywhere. You will need to edit PYWIKIPEDIADIR in newpagescat.sh to point to the location of Pywikipediabot if you do not have it installed in the root of the Pywikipediabot directory.

Detailed Description
====================

This script was originally written for a Q&A wiki, and the arrangement and categories present reflect this. You will have to customize the script to meet your own needs.

There is no timer loop; it was designed to be launched automatically with cron. newpagescat.sh is the initial script, and all subscripts are spawned from it. First, newpagescat.sh runs pagegenerators.py to fetch new pages from the wiki, and strips out unwanted characters (such as line numbers). It then launches subscripts for each general subject area on the wiki. These scripts can either launch their own subscripts, or use egrep to find matching keywords and patterns in the page titles and dump them to a file for processing.

The files that are created to contain the category lists are all stored where newpagescat.sh is stored. This may cause performance problems when using a file manager, but shouldn't be an issue for non-interactive use.

Bugs / Errata
===================

* Pywikipediabot wasn't really meant to run 24/7/365. One side-effect is that if you lose internet connection for some reason, the throttle will constantly increase, meaning it may take a long time after your connection is restored to resume running. Editing throttle.py and replacing throttle.ctrl with /dev/null _should_ help alleviate this. Alternatively, you can try adding _retry_on_fail = False_ to your user-config.py file. This will make the bot stop trying to reconnect until the next iteration.
