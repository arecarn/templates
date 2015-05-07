""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Original Author: Ryan Carney
" License: WTFPL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" BOILER PLATE {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:save_cpo = &cpo
set cpo&vim

if exists("g:loaded_template")
    finish
else
    let g:loaded_template = 1
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}


" GLOBALS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:template_load_default_maps = get(g:, 'template_load_default_maps', 1)

let g:template_option = get(g:, 'template_option', 'default value')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}


" AUTOCMDS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup autogroup_name
    autocmd!
    autocmd AUTOCMD call template#thing()
augroup END
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}


" COMMANDS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! -nargs=* -range=0 -bang Template call
            \ template#command(<count>, <line1>, <line2>, <q-args>, "<bang>")
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}


" MAPPINGS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <Plug>(template-name) :<C-u>call template#function()<CR>

if g:template_load_default_maps
    if !hasmapto('<Plug>(template-name)')
        nmap <unique> g= <Plug>(template-name)
    endif
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}


" BOILER PLATE {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let &cpo = s:save_cpo
unlet s:save_cpo
" vim:foldmethod=marker
" vim: textwidth=78
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
