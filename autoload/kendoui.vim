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
  return '0.0.1'
endfunction

function! s:Lint(mode)
  silent !clear
  execute "!" . s:kui_command . " --".a:mode . " " . bufname("%")
endfunction

function! kendoui#KUILintJS()
  :call s:Lint("js")
endfunction

function! kendoui#KUILintHTML()
  :call s:Lint("html")
endfunction
