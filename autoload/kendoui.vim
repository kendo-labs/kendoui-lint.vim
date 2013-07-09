" Vim plugin for KendoUI-Lint integration
" <https://github.com/kendo-labs/kendoui-lint.vim>
"
" Author: Derick Bailey <derick@kendoui.com>
"

if exists("g:loaded_kendoui_autoload")
    finish
endif
let g:loaded_kendoui_autoload = 1

if !exists("s:kui_command")
  let s:kui_command = "kendo-lint"
endif

function! kendoui#version()
  return '0.0.2'
endfunction

function! s:Lint(mode)
  " clear the current message, if any
  silent !clear

  " make sure kendo-lint is installed
  if !executable(s:kui_command)
    echo "D'OH! The kendo-lint tool is not installed or could not be found. :("
    echo "Please run 'npm install -g kendo-lint' to install it."
    return
  endif

  " run the kendo-lint tool in the correct mode
  let l:result = system(s:kui_command . " --".a:mode . " " . bufname("%"))

  if result != ""
    " example error message: 
    " imagegallery.js[4,2]: Option stepUp2TheStreets not found
    set errorformat=%f[%l\\,%c]:\ %m

    " load the error results in to the location list
    " and make them clickable, to go to that location
    lexpr result
    laddexpr ""
    lwindow
  else

    " clear the location list, close it and show
    " a friendly message about how awesome you are!
    lexpr! ""
    lclose
    echo "Kendo UI Lint: No Errors Found! :)"

  endif


endfunction

function! kendoui#KUILintJS()
  :call s:Lint("js")
endfunction

function! kendoui#KUILintHTML()
  :call s:Lint("html")
endfunction
