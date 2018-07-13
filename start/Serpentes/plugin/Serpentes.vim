""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim plugin for running python programs/scripts "
""""""""""""""""""""""""""""""""""""""""""""""""""

:amenu <silent> Ser&pentes.cdFile&Dir :call CdFileDir()<CR>
:amenu <silent> Ser&pentes.&PyRun :call PyRun()<CR>
:amenu <silent> Ser&pentes.&IdleRun :call IdleRun()<CR>
:amenu <silent> Ser&pentes.&ThonnyOpen :call ThonnyOpen()<CR>
:amenu <silent> Ser&pentes.&GUIRun :call GUIRun()<CR>


:function! CdFileDir()
"	Change directory to location of current file	
"	if necessary	  
:	if getcwd() != expand('%:p:h')
:		cd %:p:h
:	endif
:endfunction

:function! PyRun()
"	Run code via py.exe
"	Set cwd to current file directory
:	call CdFileDir()
:	echom "Running " . expand('%')
"	Run the current python file via py asynchronously
:	if has('win16') || has('win32') || has('win64')
:		if v:version >= 800
:			silent !start cmd /c "py -3 % & pause"
:		else
:			echom "Requires Vim version 8 or higher"
:		endif
:	else
:		echom "Not compatible with this OS"
:	endif
:endfunction

:function! IdleRun()
"	Run code in idle
"	Set cwd to current file directory
:	call CdFileDir()
:	echom "Opening " . expand('%')
"	Run the current python file via idle asynchronously
:	if has('win16') || has('win32') || has('win64')
:		if v:version >= 800
:			silent !start C:\bin\Python37-32\pythonw.exe
					\ C:\bin\Anaconda3\Lib\idlelib\idle.pyw -r %
:		else
:			echom "Requires Vim version 8 or higher"
:		endif
:	else
:		echom "Not compatible with this OS"
:	endif
:endfunction

:function! ThonnyOpen()
"	Open code via thonny (hit F5 to run)
:	call CdFileDir()
:	echom "Opening " . expand('%')
"	Open the current python file in thonny asynchronously
:	if has('win16') || has('win32') || has('win64')
:		if v:version >= 800
:			echom "Hit F5 to the script run in thonny"
:			silent !start C:\Users\Scott\AppData\Local\Programs\Thonny\thonny.exe %
:		else
:			echom "Requires Vim version 8 or higher"
:		endif
:	else
:		echom "Not compatible with this OS"
:	endif
:	redraw
:endfunction

:function! GUIRun()
"	Run code directly in pythonw
"	Set cwd to current file directory
:	call CdFileDir()
:	echom "Opening " . expand('%')
"	Run the current python file directly asynchronously
:	if has('win16') || has('win32') || has('win64')
:		if v:version >= 800
:			silent !start C:\bin\Python37-32\pythonw.exe %
:		else
:			echom "Requires Vim version 8 or higher"
:		endif
:	else
:		echom "Not compatible with this OS"
:	endif
:endfunction
