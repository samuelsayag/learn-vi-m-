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

Exiting a mode is done by typing: `Esc`

Edit a text with Vi
-------------------

`$ vi [filename]`

Leave / Save / Leave & Save
---------------------------

To leave without writing to the buffer, type: `:q!`
To NOT leave and write to the buffer, type: `:w!`
To do both, type either `:wq!` or `ZZ` (the capital is important).

"                 
