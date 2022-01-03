
" Debugger remaps
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>de :call vimspector#Reset()<CR>

nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>

nmap <leader>dl <Plug>VimspectorStepInto
\: call repeat#set("\<Plug>VimspectorStepInto", v:count)<CR>
nmap <leader>dj <Plug>VimspectorStepOver
\: call repeat#set("\<Plug>VimspectorStepOver", v:count)<CR>
nmap <leader>dk <Plug>VimspectorStepOut
\: call repeat#set("\<Plug>VimspectorStepOut", v:count)<CR>
nmap <leader>d_ <Plug>VimspectorRestart
nmap <leader>de <Plug>VimspectorReset
nnoremap <leader>d<space> :call vimspector#Continue()<CR>

nmap <leader>drc <Plug>VimspectorRunToCursor
nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
\: call repeat#set("\<Plug>VimspectorToggleBreakpoint", v:count)<CR>
nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint
\: call repeat#set("\<Plug>VimspectorToggleConditionalBreakpoint", v:count)<CR>


