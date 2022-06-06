# Console Application Runner Demo Programs

> **IMPORTANT**: Please read this file before attempting to compile any of the demo projects.

## Contents of Demos directory

The `Demos` directory and its sub-directories contain thirteen small programs that demonstrate how to use the _PJConsoleApp_ unit.

A VCL based version of each demo program is in its own sub-directory - `Demos\Demo1` through to `Demos\Demo13`.

Demos 4, 8 and 11 are also available in versions that uses the FireMonkey 2 framework instead of the VCL. These projects are in the `Demos\Demo4\FMX2`, `Demos\Demo8\FMX2` and `Demos\Demo11\FMX2` directories respectively.

Demo 13 comprises two projects: both must be compiled in order to run the demo successfully.

In addition there are two example console applications that the demos use. They are supplied in source form and need to be built. The project files are in `Demos\TestApps\Echoer` and `Demos\TestApps\Timed`.

The `Demos` directory itself contains a `.bpg` format project group file that includes all the VCL demo projects and the example console applications in a single project group. FireMonkey versions of any demo project are NOT included in the project group and must be opened separately.

Finally there's an `Demos\IOUtils` sub-directory (explained in [Dependencies](#dependencies) below) and a `Demos\TestData` directory which stores any data files required by the demo programs.

## Information about the Demos

The 13 demos are:

1. _ExecAndWait_

    Implements the traditional "ExecAndWait" routine to run a child console application using _TPJConsoleApp_.

2. _A better ExecAndWait_

    Implements an improved "ExecAndWait" routine that lets the GUI program remain interactive while the child console application is running.

3. _Indicating progress_

    Shows how to display a progress meter in the GUI while a child console
    application is running.

4. _Timing out_

    How to set a maximum time for a child console application to run and how to
    handle time-outs.

5. _Terminating an application_

    Shows how to forcible terminate a child console application.

6. _Redirecting standard I/O using files_

    How to redirect a child console application's standard input and output from
    and to files.

7. _Redirecting standard I/O using pipes_

    How to redirect a child console application's standard input and output from
    and to pipes.

8. _Capturing console output in a GUI_

    Demonstrates how to capture a child console application's output and display
    it in a GUI in "real time".

9. _Sub-classing_ TPJConsoleApp

    Shows how to write your own sub class of _TPJCustomConsoleApp_ to specialise
    its behaviour.

10. _Using_ TPJConsoleApp _from console applications_

    Demonstrates how to use _TPJConsoleApp_ to enable a console application to
    spawn child processes.

11. _Customising the appearance of the console_

    Shows how to customise the appearance of any console that is used to display
    the output of a child console application.

12. _Handling Unicode output from console applications_

    How to handle output from child console applications that output Unicode
    text instead of ANSI or ASCII text.

13. _Customising a console app's environment block_

    Shows how to pass a custom environment block to a console app process. This
    demo contains two projects: a parent app that configure the environment
    block that is passed to, and displayed by, a custom console app.

For further information see the _Console Application Runner Classes_ [Examples documentation](https://delphidabbler.com/url/consoleapp-egs) where you will find a set of examples based on the demo programs. The number of each example relates to the number of the associated demo project.

## Compatibility

Delphi 7 or later are required to build the VCL based demo projects as 32 bit Windows applications. To build 64 bit versions of the demos, Delphi XE2 or later is required.

The FireMonkey 2 based demos require Delphi XE3 or later.

## Dependencies

All the demo programs require that `PJConsoleApp.pas` is located in the parent directory of the `Demos` folder.

Demos 6, 7, 8, 9 and 12 also require one or more units from the [_I/O Utility Classes_](https://delphidabbler.com/software/ioutils) project. You will need to download this project and place the `PJPipe.pas`, `PJFileHandle.pas` and `PJPipeFilters.pas` files in the `Demos\IOUtils` directory. A zip file containing the _I/O Utility Classes_ project can be downloaded from the project's [releases page](https://github.com/ddablib/ioutils/releases) on GitHub.

> If you are using Delphi XE5 or later ensure that you use _I/O Utility Classes_ v1.0.1 or later.

The example console applications have no external dependencies.

## How to Compile

First ensure all the required files listed in [Dependencies](#dependencies) above are in place for the demos you want to build.

> **Note for Delphi 2007 users.** The supplied `.dproj` project files are not compatible with Delphi 2007. Alternative files, with the `.dproj.2007` extension have been provided for use with Delphi 2007. A batch file, `Prepare2007.bat`, is provided in the `Demos` directory that will replace existing `.dproj` files with the content of the `.proj.2007` files. To run this batch file, open a command window and make the `Demos` directory current. Now simply run the batch file by typing its name.

From your Delphi IDE open `Demos\PJConsoleAppDemos.bpg`. The VCL demo projects and the example console application projects should all be listed in the IDE's Project Manager window.

You can now build selected demos or compile them all in one go using the _Projects | Build All Projects_ menu option.

To build the FireMonkey 2 demos you must open their `.dproj` files one at a time and build them.

> Delphi may update the project or project group files. If this happens you may need to restore the original files before re-compiling with a different version of Delphi.

Each demo project is configured to compile as a 32 bit Windows application. They will all compile successfully as 64 bit Windows applications with Delphi XE2 and later, but you will need to manually add 64 bit targets to each project individually.

> **Note:** some versions of Delphi may generate hints, or possibly warnings, depending on your set-up. These should not cause a problem.

## Disclaimer

All the demo project files are for illustration purposes only. Although you can use them as you wish, you should not use any part of them in production code without thorough testing.

_**The code distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or implied.**_
