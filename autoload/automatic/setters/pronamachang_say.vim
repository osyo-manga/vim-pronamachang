scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim


function! s:random_say(config, context)
	let voices = get(a:config, "pronamachang_random_voices", [])
	if empty(voices)
		return
	endif
	call pronamachang#say_random(voices)
endfunction

function! s:say(config, context)
	let voice = get(a:config, "pronamachang_voice", "")
	if empty(voice)
		return
	endif
	call pronamachang#say(voice)
endfunction

function! automatic#setters#pronamachang_say#apply(config, context)
	call s:random_say(a:config, a:context)
	call s:say(a:config, a:context)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
