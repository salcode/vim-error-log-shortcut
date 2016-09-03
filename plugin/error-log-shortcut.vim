" error-log-shortcut.vim - shortcut for writing to error log (console)
" Maintainer:   Sal Ferrarello <http://salferrarello.com/>

if exists("g:loaded_error_log_shortcut") || v:version < 700 || &cp
  finish
endif
let g:loaded_error_log_shortcut = 1

" PHP Error Logging
" $variable
" becomes
" error_log( print_r( $variable, true ) );
augroup php_error_log
    autocmd!
    " autocmd FileType php nnoremap <leader>el ^vg_daerror_log( '<esc>pa=' . print_r( <esc>pa, true ) );<cr><esc>
    autocmd FileType php nnoremap <leader>el ^vg_daerror_log('<esc>pa=' . print_r(<esc>pa, true));<cr><esc>
    autocmd FileType php nnoremap <leader>ef oerror_log(__FUNCTION__);<cr><esc>
augroup END

" JavaScript Error Logging
" variable
" becomes
" console.log( variable );
augroup js_error_log
    autocmd!
    autocmd FileType javascript nnoremap <leader>el ^vg_daconsole.log( <esc>pa );<cr><esc>
augroup END
