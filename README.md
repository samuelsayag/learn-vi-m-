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


Simple edits
------------

### Moving the cursor around

In command mode (the default mode when you enter Vi(m) you can move arount one charachter at a time or one line by pressing:

* `h` : left
* `j` : down
* `k` : up
* `l` : right

Multiplication of command: 9k move up 9 line.

* `0` : will move the cursor to the beginning of the line
* `$` : will move the cursor to the end of the line

To move word at a time:

* `w` : forward including punctuation as a word
* `W` : forward not including punctuation as a word
* `b` : backward same spirit
* `B` : forward same spirit

To move by lines:

* `G` : to the end of the file
* `1G` : to the beginning of the file
* `42G` : to the line 42

### Scrolling on the screen

* `Ctrl+e` : Scrolling downward (the text goes up :))
* `Ctrl+y` : Scrolling upward (the text goes down :))
* `zz` : put the current line in the middle of the screen
* `zt` : put the current line at the top of the screen
* `zb` : put the current line at the bottom of the screen 

### Inserting / Appending / Changing

#### Undo / Redo

In command mode:

* `u` : undo
* `Ctrl+r` : redo

### Inserting / Appending

This correspond to a mode in Vim. From the command mode:

* `i` 
