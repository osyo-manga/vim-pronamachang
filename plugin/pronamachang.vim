scriptencoding utf-8
if exists('g:loaded_pronamachang')
  finish
endif
let g:loaded_pronamachang = 1

let s:save_cpo = &cpo
set cpo&vim

let g:pronamachang_voice_root = get(g:, "pronamachang_voice_root", "")



function! s:voice_complete_kei(arglead, ...)
	return filter(pronamachang#voice_list(), "v:val =~? '".a:arglead."'")
endfunction

command! -nargs=? -complete=customlist,s:voice_complete_kei
\	PronamachangSay
\	call pronamachang#say(<q-args>)



let g:pronamachang_say_startup_enable = get(g:, "pronamachang_say_startup_enable", 0)
let g:pronamachang_startup_voices = get(g:, "pronamachang_startup_voices", ["kei_voice_008_phrase2", "kei_voice_055", "kei_voice_056", "kei_voice_084"])

command! -bar
\	PronamachangStartupSay call pronamachang#say_random(g:pronamachang_startup_voices)


let g:pronamachang_say_goodbye_enable = get(g:, "pronamachang_say_goodbye_enable", 0)
let g:pronamachang_goodbye_voices = get(g:, "pronamachang_goodbye_voices", ["kei_voice_011_phrase2", "kei_voice_011_phrase3", "kei_voice_017_phrase2", "kei_voice_018_phrase1", "kei_voice_086_phrase2", "kei_voice_081"])

command! -bar
\	PronamachangGoodbyeSay call pronamachang#say_random(g:pronamachang_goodbye_voices)


augroup pronamachang
	autocmd!
	autocmd VimEnter *
\	if g:pronamachang_say_startup_enable | PronamachangStartupSay | endif

	autocmd VimLeave *
\	if g:pronamachang_say_goodbye_enable | PronamachangGoodbyeSay | endif
augroup END


let &cpo = s:save_cpo
unlet s:save_cpo
