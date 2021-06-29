About
-----
This folder contains updated wxWidgets project wizard for Code::Blocks, to be used with 
PB’s Guide to Starting with wxWidgets on Microsoft Windows with MinGW and Code::Blocks. 
The changes affect only Microsoft Windows platform and (mostly) GCC compiler.

Notable changes from the wizard shipped with Code::Blocks 20.04:
-----
- Remove support for obsolete wxWidgets versions 2.6 and 2.8.
- Allow linking with libraries introduced in wxWidgets 2.9, i.e., PropertyGrid, Ribbon, STC, and WebView.
- Allow linking with OpenGL for the monolithic build too.
- Do not ask whether to link with the 3rd party libraries (image formats, expat, regex, scintilla, zip), 
  they are not needed for the DLL build and required for the static build.
- Allow linking with Winsock2 instead of Winsock.
- By default, assume Unicode will be used and the generated application will be GUI instead of console one.

Installation
-----
Put files `wizard.xrc` and `wizard.script` into your `%APPDATA%\CodeBlocks\share\codeblocks\templates\wizard\wxwidgets` folder
(e.g., `c:\users\PB\AppData\Roaming\CodeBlocks\share\codeblocks\templates\wizard\wxwidgets`) and then just run the wizard as usual.