# Serpentes.vim
### A simple Vim plugin for executing Python code from vim.

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
  
  Serpentes.vim only supports Vim 8 and later (for asynchronous execution).
  Serpentes.vim currently only supports Windows, but macOS and Linux support are expected.


##### "Serpentes" is the suborder that snakes (like pythons) belong to (Animalia->Chordata->Reptilia->Squamata->Ophidia->Serpentes).
