function! vsnip_integ#vim_lsp() abort
  if g:vsnip_integ_config.vim_lsp && s:exists('autoload/lsp.vim')
    call vsnip_integ#vim_lsp#enable()
  endif
endfunction

function! vsnip_integ#vim_lsc() abort
  if g:vsnip_integ_config.vim_lsc && s:exists('plugin/lsc.vim')
    call vsnip_integ#vim_lsc#enable()
  endif
endfunction

function! vsnip_integ#lamp() abort
  if g:vsnip_integ_config.lamp && s:exists('autoload/lamp.vim')
    call vsnip_integ#lamp#enable()
  endif
endfunction

function! vsnip_integ#deoplete_lsp() abort
  try
    if g:vsnip_integ_config.deoplete_lsp && has('nvim') && luaeval('require("deoplete").request_candidates ~= nil')
      call vsnip_integ#deoplete_lsp#enable()
    endif
  catch /.*/
  endtry
endfunction

function! vsnip_integ#asyncomplete() abort
  if g:vsnip_integ_config.asyncomplete && s:exists('autoload/asyncomplete.vim')
    call vsnip_integ#asyncomplete#enable()
  endif
endfunction

function! s:exists(filepath) abort
  return !empty(globpath(&runtimepath, a:filepath))
endfunction

