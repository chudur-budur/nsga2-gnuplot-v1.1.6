In this file all the changes that have been done to the code (since it was posted on the web-site) are documented.

Code posted on the web-site on 14th June 2005

List of changes in chronological order:

1.
----------------------------------------------
Version 1.1: Released on June 14, 2005
----------------------------------------------
----------------------------------------------

2.
----------------------------------------------
Version 1.1.5: Released on May 16, 2010
----------------------------------------------
  * Fixed a bug for 64-bit machines. Kind thanks to Adamos Kyriakou (PhD student at the IT¡¯IS Foundation/ETH Zurich) for bringing this to our notice
  
----------------------------------------------

3.
----------------------------------------------
Revisions by khaled: 07/09/2015
----------------------------------------------

  * It was not deleting the constructed linked-list entirely and was constantly keeping the vestiges of 1 node at the tail, however, the bug did not affect the results. But I though it needs to be fixed.
  * The provided Makefile does not recompile the whole project if one of  the header-files (*.h) is changed, the new Makefile detects such changes and recompiles the project if there is any.
  * The Makefile also needed to change a little bit to work with the latest gcc-4.8.4
  * The Makefile was also needed to make more streamlined to conform with the standard Makefile rules.

----------------------------------------------
