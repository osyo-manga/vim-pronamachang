scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

function! unite#sources#pronamachang#define()
	return s:source
endfunction


let s:source = {
\	"name" : "pronamachang",
\	"description" : "pronamachang",
\	"default_action" : "say",
\	"hooks" : {},
\	"action_table" : {
\		"preview" : {
\			"is_quit" : 0,
\		},
\		"say" : {
\		}
\	}
\}


function! s:source.action_table.preview.func(candidate)
	call pronamachang#say(a:candidate.action__text)
endfunction


function! s:source.action_table.say.func(candidate)
	call pronamachang#say(a:candidate.action__text)
endfunction


function! s:source.gather_candidates(args, context)
	let voices = map(pronamachang#voice_files(), '[v:val, fnamemodify(v:val, ":t:r")]')
	
	return map(voices, '{
\		"word" : printf("%-21S : %s", v:val[1], pronamachang#to_say_string(v:val[1])),
\		"kind" : ["file"],
\		"action__text" : v:val[1],
\		"action__path": v:val[0],
\		"action__directory": v:val[1]
\	}')
endfunctio



let &cpo = s:save_cpo
unlet s:save_cpo
