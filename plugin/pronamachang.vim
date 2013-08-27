scriptencoding utf-8
if exists('g:loaded_pronamachang')
  finish
endif
let g:loaded_pronamachang = 1

let s:save_cpo = &cpo
set cpo&vim

let g:pronamachang_voice_root = get(g:, "pronamachang_voice_root", "")
let g:pronamachang_goodbye_wait = get(g:, "pronamachang_goodbye_wait", "2000ms")

if !exists('g:pronamachang_say_startup_enable')
  let g:pronamachang_say_startup_enable = 0
endif

if !exists('g:pronamachang_say_goodbye_enable')
  let g:pronamachang_say_goodbye_enable = 0
endif

function! s:voice_complete_kei(arglead, ...)
	return filter(pronamachang#voice_list(), "v:val =~? '".a:arglead."'")
endfunction

command! -nargs=? -complete=customlist,s:voice_complete_kei
\	PronamachangSay
\	call pronamachang#say(<q-args>)


command! -bar
\	PronamachangStartupSay call pronamachang#say_random(pronamachang#startup_voices())

command! -bar
\	PronamachangGoodbyeSay call pronamachang#say_random(pronamachang#goodbye_voices())


augroup pronamachang
	autocmd!
	autocmd VimEnter *
\		if g:pronamachang_say_startup_enable | PronamachangStartupSay | endif

	autocmd VimLeave *
\		if g:pronamachang_say_goodbye_enable | PronamachangGoodbyeSay| execute "sleep" g:pronamachang_goodbye_wait | endif
augroup END


let &cpo = s:save_cpo
unlet s:save_cpo
