scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

function! automatic#setters#pronamachang_say#apply(config, context)
	let voices = get(a:config, "pronamachang_random_voices", [])
	if empty(voices)
		return
	endif
	call pronamachang#say_random(voices)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
