Solace
======

[![Build status](https://ci.appveyor.com/api/projects/status/32onkslnpe6w4r49?svg=true)](https://ci.appveyor.com/project/TimSimpson/solace)

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

Set the environment variable SOLACE_FILES to a directory containing solace
color files. The "samples" directory of this repo is an example of such a
directory.

After that, make sure "solace" is on your PATH and type solace followed by:

* solace list - Show all solace color files.

* solace load - Load a file containing new colors.

    Examples:

<img src="http://border-town.com/projects/Solace/solace-halloween.png"/>

<img src="http://border-town.com/projects/Solace/solace-coffee.png"/>

<img src="http://border-town.com/projects/Solace/solace-beehive.png"/>

* solace dump - View current palette of colors. The output from this command
    can be saved as a color file used with load. Note that not all sixteen
    colors need in a file. The color indexes refer to the hex value given to
    the COLOR command. Typically, "COLOR 07" can be used to return the default
    colors of the Windows command prompt (gray and black). Because of this
    most solace files only change colors 0 (the background) and 7 (the text).

    Example:

<img src="http://border-town.com/projects/Solace/solace-dump.png"/>


### Building ###

Building Solace requires <a href="http://border-town.com/macaroni/">Macaroni</a>
and <a href="https://www.conan.io/">Conan</a>. Both tools must be available on
the path.

To build, enter the workspace directory and

    $ mkdir build
    $ cd build
    $ conan install ..
    $ conan build ..
