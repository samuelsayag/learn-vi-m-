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

The genral form of an edit command under vim will take the form:

*[command][number](text object)*

* command and number are optional. If just *(text object)* is present the effect is to move the cursor.
* apart from this any combination is possible.

#### Undo / Redo

In command mode:

* `u` : undo
* `Ctrl+r` : redo
* `.` to repeat the last edit command (!!! beware not the last move command but the last edidt command).

#### Inserting / Appending

This correspond to a mode in Vim. From the command mode:

* `i` let you enter insert mode. The cursor is positioned on the same place that it was in command mode.
* `a` let you enter append mode. The cursor is positioned immediatly after the place it was on in command mode.
* `I` will insert text at the beginnign of the line.
* `A` will insert text at the end of the lien.

Note: Insert mode is practical when you want to insert text at the beginning of a lne and append mode when you want to enter it at the end of the line.

#### Changing / Substituting / Replacing

Change mode will be relevant when you want to edit a file that has been written and you want to make correction here and there.


* `c[multiplier]w` will let you change `[multiplier]` word forward.
* `c[mulitiplier]b` do the same backward.
* `c$` let you change everything until the end of the line.
* `c0` do the same backward until the beginning of the line.
* `cc` will change the whole line until you type `ESC`
* `C` will change the whole line just like above (`c$`)

Replacement and substitution make a small difference:
* `r` will replace 1 character
* `[multiplier]s` will replace `multiplier` characters
* `R` let you write "over" the current text from the position of the cursor until a max of one line.
* `S` let you substiture a whole line by some other text (`C` do this just from the cursor position).

#### Deleting

Deleting some text will additionally put in in a buffer (see also below "yank"). The text may be placed elsewhere with the `p` command.

* `x` will delete a single character
* `dw` will delete a word (`de` to retain space between words, `dE` to do the same but including punctuation.
* `db` will delete the preceding word.
* `d$` or `D` delete until the end of the line.
* `d0` delete from the beginning of the line
* `dd` delete the whole line
* `xp` to transpose two letters

#### Copying text

* `[multiplier]y[text]` will put the text selecter in a special buffer that will be erased by the next y(ank). Then `p` let put this bit of text after the cursor position (P let do just this before the cursor position).
* `yy` will copy the whole line (just like `Y`)
* `y$` will copy the text from the cursor until the end of the text.
* `y0` will do the copy from the cursor to the beginning of the line.

!!!! Beware !!!! the same buffer is user whether you "yank" or "delete"

#### Miscellaneous edits

* `o` open a blank line after the cursor of text.
* `O` open a blank line befor the cursor of text.
* `J` wil join the line the cursor is currently on with the following line.
