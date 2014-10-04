MW-autocat-script
=================

This is a bash script wrapper for Pywikibot that automatically adds new pages to a specified category based on its title.

Installation
================

The script directory can be placed anywhere. You will need to edit PYWIKIPEDIADIR in settings.sh to point to the location of Pywikibot if you do not have it installed in the root of the Pywikibot directory.

Detailed Description
====================

This script was originally written for a Q&A wiki, and the arrangement and categories present reflect this. You will have to customize the script to meet your own needs.

There is no timer loop; it was designed to be launched automatically with cron. newpagescat.sh is the initial script, and all subscripts are spawned from it. First, newpagescat.sh runs pagegenerators.py to fetch new pages from the wiki. It then launches subscripts for each general subject area on the wiki. These scripts can either launch their own subscripts, or use egrep to find matching keywords and patterns in the page titles and dump them to a file for processing.

retroactive.sh creates a list of all the pages in the Main namespace of the site and categorizes them just as it would for new pages.

falserun.sh make a dry run with an empty list to check for syntax errors in the scripts that may be hard to spot otherwise.

If a category is determined to have matching questions, the questions are stored in a text file in a temporary directory (or one of your choosing) until pywikibot adds the categories, and then is automatically removed. The number of writes to disk has been minimized, but you may still want to use a ramdisk for your temporary directory.

Dependencies
=====================

This script depends on the following programs / libraries:

* Python (for Pywikibot)
* bash
* [expect](http://www.nist.gov/el/msid/expect.cfm)
* GNU egrep (other versions of egrep may work but I haven't tested them)

Bugs / Errata
===================

* Pywikibot wasn't really meant to run 24/7/365. One side-effect is that if you lose internet connection for some reason, the throttle will constantly increase, meaning it may take a long time after your connection is restored to resume running. Editing throttle.py and replacing throttle.ctrl with /dev/null _should_ help alleviate this. Alternatively, you can try adding _retry_on_fail = False_ to your user-config.py file. This will make the bot stop trying to reconnect until the next iteration.
