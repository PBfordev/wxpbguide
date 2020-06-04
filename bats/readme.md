PB’s Guide to Starting with wxWidgets on Microsoft Windows with MinGW and Code::Blocks
===============

This folder contains  folders with batches for building 
wxWidgets (folder *build*) and helper batches (folder *tools*).


build
---------------
Batches in this folder build wxWidgets with mingw-w64 i686-8.1.0-posix-sjlj-rt_v6-rev0

*build-library-shared.bat*
Builds Shared Debug and Release wxWidgets libraries.

*build-library-shared-parallel.bat*
Builds Shared Debug and Release wxWidgets libraries
using parallel building with 4 jobs.

*build-library-shared-simplest.bat*
Builds Shared Debug and Release wxWidgets libraries
in the most simplest way possible.

*build-library-static.bat*
Builds Static Debug and Release wxWidgets libraries
with GCC libraries linked statically.

*build-library-static-parallel.bat*
Builds Static Debug and Release wxWidgets libraries
with GCC libraries linked statically,
using parallel building with 4 jobs.

*build-sample-minimal-shared-debug.bat*
Builds minimal sample for Shared Debug configuration.


tools
---------------

*test-wxwin.bat*
Tests whether WXWIN system environment variable is set and 
points to the wxWidgets root folder.

*test-gcc-not-in-path.bat*
Tests whether there is a GCC compiler in PATH.
