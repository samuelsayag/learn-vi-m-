Vi and Vim notes
================

Concept
-------

Vi is loading the file in edition into a buffer - a copy of the file.

Vi consider this different state of editing: 

	*  insert
	*  change
	*  delete
	*  move
	*  copy

To each of this state correspond a mode that you enter into with a key.

*Exiting* a mode is done by typing: `Esc`

Edit a text with Vi
-------------------

`$ vi [filename]`

Leave / Save / Leave & Save ... and more :)
-------------------------------------------

### The crucial

To leave without writing to the buffer, type: `:q!`

To NOT leave and write to the buffer, type: `:w!`

To do both, type either `:wq!` or `ZZ` (the capital is important).

To NOT leave and cancel all the edition you made from the point 
you last write to the buffer, type: `:e!`

### The less crucial...but so cool ;)

Its possible to access the shell while being in vi(m).

For instance to `ls` or `df` from the current directory, type: `:!ls` and `:!df`.

Or simply to access a shell type: `:sh` (exiting may be done by `Ctrl + D`, `Ctrl + Z` or `exit`)

                
