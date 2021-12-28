"---- CoC Configurations ----
    " Close preview window after completion is done
    autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

    " use <tab> for trigger completion and navigate to the next complete item
    function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

    inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

    " Use <c-space> for trigger completion.
      inoremap <silent><expr> <C-Space> coc#refresh()


    " Make <CR> auto-select the first completion item and notify coc.nvim to
    " format on enter, <cr> could be remapped by other vim plugin
    inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                                  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

    " Remap keys for goto
      nmap <silent> gd <Plug>(coc-definition)
      nmap <silent> gy <Plug>(coc-type-definition)
      nmap <silent> gi <Plug>(coc-implementation)
      nmap <silent> gr <Plug>(coc-references)

    " Highlight the symbol and its references when holding the cursor.
    autocmd CursorHold * silent call CocActionAsync('highlight')

    " Symbol renaming.
    nmap <leader>rn <Plug>(coc-rename)

    " Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
    xmap <leader>a  <Plug>(coc-codeaction-selected)
    nmap <leader>a  <Plug>(coc-codeaction-selected)

    " Remap for do codeAction of current word
    nmap <leader>ac  <Plug>(coc-codeaction-cursor)

    " Format code
    " Use `:Format` to format current buffer
      command! -nargs=0 Format :call CocAction('format')
      nnoremap <silent><leader><C-f> :Format<CR>

