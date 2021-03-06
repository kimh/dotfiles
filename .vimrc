"==============================================================
"               .vimrc
"==============================================================

function! SourceSafe(file)
  if filereadable(expand(a:file))
    execute 'source ' . a:file
  endif
endfunction


"--------------------------------------------------------------
"          Initial Configuration                            {{{
"--------------------------------------------------------------

call SourceSafe('~/.vim/rc/init.vim')

" }}}


"--------------------------------------------------------------
"          Plugins                                          {{{
"--------------------------------------------------------------

call SourceSafe('~/.vim/rc/pluginlist.vim')

" }}}


"--------------------------------------------------------------
"          Base Configuration                               {{{
"--------------------------------------------------------------

call SourceSafe('~/.vim/rc/base.vim')
if has('nvim')
  call SourceSafe('~/.vim/rc/base.nvim')
endif

" }}}


"--------------------------------------------------------------
"         Layout Settings                                   {{{
"--------------------------------------------------------------

call SourceSafe('~/.vim/rc/display.vim')
call SourceSafe('~/.vim/rc/statusline.vim')
call SourceSafe('~/.vim/rc/coloring.vim')

" }}}


"--------------------------------------------------------------
"          Key mapping                                      {{{
"--------------------------------------------------------------

call SourceSafe('~/.vim/rc/keyconfig.vim')
call SourceSafe('~/.vim/rc/mappings.vim')

" }}}


"--------------------------------------------------------------
"          command                                          {{{
"--------------------------------------------------------------

call SourceSafe('~/.vim/rc/command.vim')
call SourceSafe('~/.vim/rc/autocmd.vim')

" }}}


"--------------------------------------------------------------
"          Special Configuration                            {{{
"--------------------------------------------------------------

for f in split(glob('~/.vim/rc/myplugins/*.vim'), '\n')
  execute "call SourceSafe('" . f . "')"
endfor

" }}}


"--------------------------------------------------------------
"          Plugin Settings                                  {{{
"--------------------------------------------------------------

call SourceSafe('~/.vim/rc/pluginconfig.vim')

" }}}


"--------------------------------------------------------------
"          Local Configuration                              {{{
"--------------------------------------------------------------

call SourceSafe('~/.vimrc.local')

" }}}


