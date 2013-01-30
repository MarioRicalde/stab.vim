" Originally Created by Drew Neil

if exists("g:loaded_stab") || &cp
  finish
endif
let g:loaded_stab = 1

" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* StabSoft call StabSoft('<args>')
command! -nargs=* StabHard call StabHard('<args>')
function! StabSoft(input)
  if a:input > 0
    let &l:sts = a:input
    let &l:sw = a:input
    let &l:ts = 8 
    setlocal expandtab
  endif
  call SummarizeTabs()
endfunction
  
function! StabHard(input)
  if a:input > 0
    let &l:sts = 0
    let &l:ts = a:input
    let &l:sw = a:input
    setlocal noexpandtab 
  endif
  call SummarizeTabs()
endfunction

function! SummarizeTabs()
  try
    echohl ModeMsg
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    echon ' tabstop='.&l:ts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction


" Reindenting

" Originally Created by Drew Neil

if exists("g:loaded_stab") || &cp
  finish
endif
let g:loaded_stab = 1

" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* StabSoft call StabSoft('<args>')
command! -nargs=* StabHard call StabHard('<args>')
function! StabSoft(input)
  if a:input > 0
    let &l:sts = a:input
    let &l:sw = a:input
    let &l:ts = 8 
    setlocal expandtab
  endif
  call SummarizeTabs()
endfunction
  
function! StabHard(input)
  if a:input > 0
    let &l:sts = 0
    let &l:ts = a:input
    let &l:sw = a:input
    setlocal noexpandtab 
  endif
  call SummarizeTabs()
endfunction

function! SummarizeTabs()
  try
    echohl ModeMsg
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    echon ' tabstop='.&l:ts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction
