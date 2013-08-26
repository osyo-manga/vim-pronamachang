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


let g:pronamachang_auto_voices_enables = get(g:, "pronamachang_auto_voices_enables", {})

let g:pronamachang_auto_voices_startup = get(g:, "pronamachang_auto_voices_startup", ["kei_voice_008_phrase2", "kei_voice_055", "kei_voice_056", "kei_voice_084"])


function! s:apply(event)
	if get(g:pronamachang_auto_voices_enables, a:event, 0)
		call pronamachang#say_random(g:pronamachang_auto_voices_{a:event})
	endif
endfunction

augroup pronamachang
	autocmd!
	autocmd VimEnter * call s:apply("startup")
augroup END


let &cpo = s:save_cpo
unlet s:save_cpo
