# Serpentes
### A simple Vim plugin for executing Python code from vim on Windows.

This simple plugin add several functions to give the user various methods to execute Python code that is being edited.

#### The functions:
1. cdFileDir(): This function changes the current directory to the location of the file in the current buffer.  All of the subsequent functions call this function before opening or executing code.
1. PyRun(): This function asynchronously excecutes the code in the current buffer with the python compiler/interpreter.
1. IdleRun(): This function asyncronously executes the code in the current buffer with IDLE (Integrated Development and Learning Environment).
1. ThonnyOpen(): This function asyncronously opens the code in the current buffer in [Thonny](http://thonny.org/) (a Python IDE for beginners).
1. GUIRun(): This function asynchronously executes the code in the current buffer with the non-console python compiler/interpreter (pythonw).  This is intended for use with GUI programming.

#### The menu:
- Alt-P opens the Serpentes menu
- Once the Serpentes menu is open:
  - 'd' runs cdFileDir().
  - 'p' runs PyRun().
  - 'i' runs IdleRun().
  - 't' runs ThonnyRun().
  - 'g' runs GUIRun().

#### Installation:
Clone into your ~/.vim/pack (%USERPROFILE%\vimfiles\pack on windows) directory (create the pack directoty if it doesn't already exist).
  
  Serpentes.vim only supports Vim 8 and later (for asynchronous execution).

  Serpentes.vim currently only supports Windows as it makes use of a Windows only feature. I hope to find a way to accomplish the same thing in a cross-platform manner in the future.


##### "Serpentes" is the suborder that snakes (like pythons) belong to (Animalia->Chordata->Reptilia->Squamata->Ophidia->Serpentes).
