# Console Application Runner Classes

## Description

These classes are designed to be used to control the execution of child console application processes. There are two classes: a class named _TPJCustomConsoleApp_ that is provided a base class for user-defined sub-classes, and _TPJConsoleApp_ that is used to provide a general way to run and manipulate console applications. Both classes are provided in a single unit, _PJConsoleApp_.

The classes enable the console application's standard input, standard output and standard error to be redirected to and from files or pipes. The classes can also time-slice the running of the console application to enable the calling application to continue processing and to enable redirected piped output to be processed.

For full details please see the [online documentation](https://delphidabbler.com/url/consoleapp-docs).

### Compatibility

The classes require Delphi 7 and later.

_PJConsoleApp_ is suitable for compilation with both the 32 bit and 64 bit Delphi compilers (Delphi XE2 and later). However, the unit uses the Windows API so is not suitable for compilation for other platforms.

The classes can be used with both the VCL and FireMonkey frameworks.

## Installation

The _Console Application Runner Classes_ and associated documentation and demo program source files are supplied in a zip file. Before installing, or using, you need to extract all the files from the zip file, preserving the directory structure. The following files will be extracted:

* **`PJConsoleApp.pas`** – The source code of the console application runner classes.
* `CHANGELOG.md` – The project's change log.
* `Documentation.URL` – Short-cut to the project's online documentation.
* `MPL-2.0.txt` – Mozilla Public License v2.0.
* `README.md` – The project's read-me file.

In addition to the above files you will find numerous demo projects in the `Demos` sub-directory.

There are three possible ways to use the units.

1. The simplest way is to add `PJConsoleApp.pas` to your projects as and when you need it.
2. To make the unit easier to re-use you can either copy it to a folder on your Delphi search path, or add the folder where you extracted the units to the search path. You then simply use the units as required without needing to add them to your project.
3. For maximum portability you can add the unit to a Delphi design time package. If you need help doing this [see here](https://delphidabbler.com/url/install-comp).
4. If you use Git you can added the [`ddablib/consoleapp`](https://github.com/ddablib/consoleapp) GitHub repository as a Git submodule and add it to your project. Obviously, it's safer if you fork the repo and use your copy, just in case `ddablib/consoleapp` ever goes away.

## Demo Programs

The source code for numerous demo projects is included in the download. All the demos and supporting files are stored in sub-folders of the `Demos` directory.

Please note that some of the demos use units and classes from the DelphiDabbler [_IO Utility Classes_](https://delphidabbler.com/software/ioutils) project. Before attempting to compile the affected demos you need to download that project and copy the required units to the `Demos\IOUtils` directory. Users of Delphi XE5 and later must use _IO Utility Classes_ v1.0.1 or later.

For more information see the file [`README.txt`](https://raw.githubusercontent.com/ddablib/consoleapp/main/Demos/README.txt) in the `Demos` directory.

The demo programs are described in the _Examples_ section of the [online documentation](https://delphidabbler.com/url/consoleapp-docs).

## Update History

A complete change log is provided in [`CHANGELOG.md`](https://github.com/ddablib/consoleapp/blob/main/CHANGELOG.md) that is included in the download.

## License

The _Console Application Runner Classes_ are released under the terms of the [Mozilla Public License, v2.0](https://www.mozilla.org/MPL/2.0/).

## Bugs and Feature Requests

Bugs can be reported or new features requested via the project's [Issue Tracker](https://github.com/ddablib/consoleapp/issues). A GitHub account is required.

Please check if an issue has already been created for a similar report or request. If so then please add a comment containing as much information as you can to the existing issue, or if you've nothing to add, just add a :+1: (`:+1:`) comment. If there is no suitable existing issue then please add a new issue and give as much information as possible.

## About the Author

I'm Peter Johnson – a hobbyist programmer living in Ceredigion in West Wales, UK, writing mainly in Delphi. My programs and other library code are available from: [https://delphidabbler.com/](https://delphidabbler.com/).

This document is copyright © 2007-2022, [P D Johnson](https://gravatar.com/delphidabbler).
