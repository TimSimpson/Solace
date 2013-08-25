Solace
======

Solace mitigates the pain caused by the Windows console.

You see, the Windows terminal can only use 16 colors, and while it's possible to
alter those colors via the "properties" Window one at a time, persisting or
reusing hand-editted color combinations is difficult.

If you hate managing colors but don't want to abandon the Command Prompt
entirely for a replacement such as
<a href="http://sourceforge.net/projects/console/">Console 2</a>,
Solace can alleviate your grief by quickly dumping and loading colors from the
command line.

### Usage ###

* solace-dump - View current palette of colors.

<img src="http://border-town.com/projects/Solace/solace-dump.png"/>

* solace-load - Load a file containing new colors.

<img src="http://border-town.com/projects/Solace/solace-halloween.png"/>

<img src="http://border-town.com/projects/Solace/solace-coffee.png"/>

<img src="http://border-town.com/projects/Solace/solace-beehive.png"/>


### Building ###

Building Solace requires <a href="http://border-town.com/macaroni/">Macaroni</a>
 and <a href="http://www.boost.org/doc/libs/1_54_0/more/getting_started/windows.html">Boost Build</a>.

Assuming both are configured, all that's needed is to download it's source and
execute "macaroni build".
