scriptencoding utf-8
if exists('g:loaded_pronamachang')
  finish
endif
let g:loaded_pronamachang = 1

let s:save_cpo = &cpo
set cpo&vim

let g:pronamachang_voice_root = get(g:, "pronamachang_voice_root", "")
let g:pronamachang_goodbye_wait = get(g:, "pronamachang_goodbye_wait", "2000ms")

let g:pronamachang_say_startup_enable = get(g:, "pronamachang_say_startup_enable", 0)
let g:pronamachang_say_goodbye_enable = get(g:, "pronamachang_say_goodbye_enable", 0)


function! s:voice_complete_kei(arglead, ...)
	return filter(pronamachang#voice_list(), "get(split(v:val, ' '), 1, v:val) =~? '".a:arglead."'")
endfunction

command! -nargs=+ -complete=customlist,s:voice_complete_kei
\	PronamachangSay
\	call pronamachang#say([<f-args>])


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
