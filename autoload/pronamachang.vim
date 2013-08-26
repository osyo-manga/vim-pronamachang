scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim



let g:pronamachang#default_voice_string_list = {
\	"kei_voice_008_phrase1" : "おはよう",
\	"kei_voice_008_phrase2" : "今日もどんどんコード書いていこう",
\	"kei_voice_009_phrase1" : "こんにちわ",
\	"kei_voice_009_phrase2" : "お昼食べた？",
\	"kei_voice_009_phrase3" : "お腹すいてると集中力落ちるよ",
\	"kei_voice_010_phrase1" : "こんばんわ",
\	"kei_voice_010_phrase2" : "調子どう",
\	"kei_voice_010_phrase3" : "プログラミングって夜のほうが捗るよね",
\	"kei_voice_010_phrase4" : "え、わたしだけ",
\	"kei_voice_011_phrase1" : "おやすみ",
\	"kei_voice_011_phrase2" : "今日も結構がんばってたね",
\	"kei_voice_011_phrase3" : "ゆっくりねて、続きは明日だね",
\	"kei_voice_012_phrase1" : "ありがとう",
\	"kei_voice_012_phrase2" : "おかげてうまくいきそう",
\	"kei_voice_013_phrase1" : "おめでとう",
\	"kei_voice_013_phrase2" : "今日はいい日だね",
\	"kei_voice_014_phrase1" : "どうしたの",
\	"kei_voice_014_phrase2" : "バグが取れないとか",
\	"kei_voice_014_phrase3" : "ああ、プログラミングの話とはかぎらないか",
\	"kei_voice_015_phrase1" : "わたし、暮井慧",
\	"kei_voice_015_phrase2" : "よろしくね",
\	"kei_voice_016_phrase1" : "はじめまして",
\	"kei_voice_016_phrase2" : "あなたもプログラミング好きなの",
\	"kei_voice_016_phrase3" : "わたしは好きなんだけどね",
\	"kei_voice_017_phrase1" : "おかえり",
\	"kei_voice_017_phrase2" : "今日も1日お疲れ様",
\	"kei_voice_017_phrase3" : "さぁ、今から自由な時間だよ",
\	"kei_voice_018_phrase1" : "また来てね",
\	"kei_voice_018_phrase2" : "次は一緒になにか作ろうよ",
\	"kei_voice_019_phrase1" : "がんばってー",
\	"kei_voice_019_phrase2" : "もうひと踏ん張りで良いプログラミングになるはず",
\	"kei_voice_020_phrase1" : "ちょ、ちょっと",
\	"kei_voice_020_phrase2" : "慌てない慌てない、落ち着いて見なおして",
\	"kei_voice_021_phrase1" : "こらー",
\	"kei_voice_021_phrase2" : "その程度のバグで諦めちゃダメだよ",
\	"kei_voice_022_phrase1" : "もぅ",
\	"kei_voice_022_phrase2" : "ここ、うまくいかないなぁ",
\	"kei_voice_022_phrase3" : "ねぇどういう風に書けばうまく動くと思う",
\	"kei_voice_023_phrase1" : "なに",
\	"kei_voice_023_phrase2" : "なにか手伝うことある",
\	"kei_voice_023_phrase3" : "よーし、任せて",
\	"kei_voice_024_phrase1" : "あっ",
\	"kei_voice_024_phrase2" : "タイポしちゃった",
\	"kei_voice_030_phrase1" : "ガーン",
\	"kei_voice_030_phrase2" : "液晶割れちゃった…",
\	"kei_voice_031_phrase1" : "じゃじゃーん",
\	"kei_voice_031_phrase2" : "新しい端末ゲット",
\	"kei_voice_032_phrase1" : "ばばーん",
\	"kei_voice_032_phrase2" : "結果だよ",
\	"kei_voice_035_phrase1" : "ぬるぽ",
\	"kei_voice_035_phrase2" : "がっ！",
\	"kei_voice_036_phrase1" : "検索するね",
\	"kei_voice_036_phrase2" : "ちょっと待っててね",
\	"kei_voice_040_phrase1" : "えぇ",
\	"kei_voice_040_phrase2" : "そんなこと急に言われても困っちゃうよ",
\	"kei_voice_008" : "",
\	"kei_voice_009" : "",
\	"kei_voice_010" : "",
\	"kei_voice_011" : "",
\	"kei_voice_012" : "",
\	"kei_voice_013" : "",
\	"kei_voice_014" : "",
\	"kei_voice_015" : "",
\	"kei_voice_016" : "",
\	"kei_voice_017" : "",
\	"kei_voice_018" : "",
\	"kei_voice_019" : "",
\	"kei_voice_020" : "",
\	"kei_voice_021" : "",
\	"kei_voice_022" : "",
\	"kei_voice_023" : "",
\	"kei_voice_024" : "",
\	"kei_voice_025" : "",
\	"kei_voice_026" : "",
\	"kei_voice_027" : "",
\	"kei_voice_028" : "",
\	"kei_voice_029" : "",
\	"kei_voice_030" : "",
\	"kei_voice_031" : "",
\	"kei_voice_032" : "",
\	"kei_voice_033" : "",
\	"kei_voice_034" : "",
\	"kei_voice_035" : "",
\	"kei_voice_036" : "",
\	"kei_voice_037" : "",
\	"kei_voice_038" : "",
\	"kei_voice_039" : "",
\	"kei_voice_040" : "",
\	"kei_voice_055" : "はじめるよ",
\	"kei_voice_056" : "スタート",
\	"kei_voice_057" : "ゴール",
\	"kei_voice_058" : "あと1分",
\	"kei_voice_059" : "",
\	"kei_voice_059_phrase1" : "あと30秒",
\	"kei_voice_059_phrase2" : "はやくはやく",
\	"kei_voice_060" : "しゅーりょう",
\	"kei_voice_061_a" : "お・わ・り、だよ！",
\	"kei_voice_061_b" : "おっわりっだよ！",
\	"kei_voice_062" : "時間だよ",
\	"kei_voice_063" : "もうすぐ時間だよ",
\	"kei_voice_064" : "焦らなくていいよ",
\	"kei_voice_065" : "今日は大事な用事があるよ、忘れないようにね",
\	"kei_voice_066" : "明日",
\	"kei_voice_067" : "早く起きてよ",
\	"kei_voice_068" : "ぜろっ！",
\	"kei_voice_069" : "いちっ！",
\	"kei_voice_070" : "にぃっ！",
\	"kei_voice_071" : "さんっ！",
\	"kei_voice_072" : "しぃっ！",
\	"kei_voice_073" : "よんっ！",
\	"kei_voice_074" : "ごっ！",
\	"kei_voice_075" : "ろくっ”！",
\	"kei_voice_076" : "ななっ！",
\	"kei_voice_077" : "はちっ！",
\	"kei_voice_078" : "くっ！",
\	"kei_voice_079" : "きゅうっ！",
\	"kei_voice_080" : "じゅうっ！",
\	"kei_voice_085_phrase1" : "おーっとどっこい",
\	"kei_voice_085_phrase2" : "エラーだよ",
\	"kei_voice_086_phrase1" : "さよならUSB！",
\	"kei_voice_086_phrase2" : "また来てねっ！",
\	"kei_voice_087_phrase1" : "きたっ！",
\	"kei_voice_087_phrase2" : "USBきたよ！",
\	"kei_voice_088_phrase1" : "うーん、バッテリー減ってきてる",
\	"kei_voice_088_phrase2" : "こまめにセーブしてね",
\	"kei_voice_089_phrase1" : "あーっもう限界！",
\	"kei_voice_089_phrase2" : "バッテリー切れちゃうよ！",
\	"kei_voice_090_phrase1" : "ちゅーもーく",
\	"kei_voice_090_phrase2" : "ダイアログ見て",
\	"kei_voice_091_phrase1" : "んっ？",
\	"kei_voice_091_phrase2" : "これは確認が必要だよ",
\	"kei_voice_093_phrase1" : "メール来たよ",
\	"kei_voice_093_phrase2" : "読む？",
\	"kei_voice_093_phrase3" : "とりあえずほっとく？",
\	"kei_voice_095_phrase1" : "ポップアップ？",
\	"kei_voice_095_phrase2" : "そうは問屋がおろさないよっ！",
\	"kei_voice_096_phrase1" : "ブーレくポイント！",
\	"kei_voice_096_phrase2" : "さぁーデバッグデバッグ",
\	"kei_voice_097_phrase1" : "おっと",
\	"kei_voice_097_phrase2" : "もっと良いコード思いついた？",
\	"kei_voice_098_phrase1" : "ところがどっこい",
\	"kei_voice_098_phrase2" : "ビルドエラー",
\	"kei_voice_099_phrase1" : "ビルド完了",
\	"kei_voice_099_phrase2" : "うまく動くかな",
\	"kei_voice_101_phrase1" : "電話だよー",
\	"kei_voice_101_phrase2" : "誰からかな",
\	"kei_voice_081" : "はいっ、終了ー",
\	"kei_voice_082" : "テーマ変えて気分転換ね",
\	"kei_voice_083" : "ログオフしてちょっと休憩ね",
\	"kei_voice_084" : "さーて、作業再開ね",
\	"kei_voice_085" : "おーっとどっこいエラーだよぅ",
\	"kei_voice_086" : "さよなら USB、また来てね！",
\	"kei_voice_087" : "きたっ、USB 来たよ！",
\	"kei_voice_088" : "うーん、バッテリー減ってきてる。こまめにセーブしてね",
\	"kei_voice_089" : "あっーもう限界！バッテリー切れちゃうよ！",
\	"kei_voice_090" : "ちゅーもーく、ダイアログ見て",
\	"kei_voice_091" : "ん？これは確認が必要だよ",
\	"kei_voice_092" : "はいはい、慌てないで",
\	"kei_voice_093" : "メール来たよ、読む？とりあえず、ほっとく？",
\	"kei_voice_094" : "ふぅーすっきりしたー",
\	"kei_voice_095" : "ポップアップ？そうは問屋がおろさなよ！",
\	"kei_voice_096" : "ブレークポイント！さーデバッグデバッグ",
\	"kei_voice_097" : "おっと、もっと良いコード思いついた？",
\	"kei_voice_098" : "ところがどっこい、ビルドエラー",
\	"kei_voice_099" : "ビルド完了！うまくうごくかなぁ",
\	"kei_voice_100" : "着信来たよ",
\	"kei_voice_101" : "電話だよー誰からだろう",
\	"kei_voice_102" : "スカイプのコール着てるよ",
\	"kei_voice_103" : "Space",
\	"kei_voice_104" : "Enter",
\	"kei_voice_105" : "BackSpace",
\	"kei_voice_106" : "Esc",
\	"kei_voice_107" : "Windows",
\	"kei_voice_108" : "コントロール",
\	"kei_voice_109" : "Alt",
\	"kei_voice_110" : "Shift",
\	"kei_voice_111" : "Tab",
\	"kei_voice_112" : "Insert",
\	"kei_voice_113" : "Delete",
\	"kei_voice_114" : "PrintScreen",
\	"kei_voice_115" : "Home",
\	"kei_voice_116" : "End",
\	"kei_voice_117" : "Pageup",
\	"kei_voice_118" : "Pagedown",
\	"kei_voice_119" : "上",
\	"kei_voice_120" : "下",
\	"kei_voice_121" : "右",
\	"kei_voice_122" : "左",
\	"kei_voice_123" : "Command",
\}


function! pronamachang#clear_cache_voice_files()
	unlet! s:cache_voice_files
endfunction


function! pronamachang#voice_files()
	if exists("s:cache_voice_files")
		return copy(s:cache_voice_files)
	endif
	let s:cache_voice_files = map(split(globpath(g:pronamachang_voice_root, "**/**.wav"), "\n"), "substitute(v:val, '\\', '/', 'g')")
	return copy(s:cache_voice_files)
endfunction


function! pronamachang#voice_list()
	return map(pronamachang#voice_files(), "fnamemodify(v:val, ':t:r')")
endfunction


function! pronamachang#to_say_string(voice)
	return filereadable(a:voice)
\		 ? pronamachang#to_say_string(fnamemodify(a:voice, ':t:r'))
\		 : get(g:pronamachang#default_voice_string_list, a:voice, "")
endfunction

function! pronamachang#to_fullpath(voice)
	for file in pronamachang#voice_files()
		if file =~# '/' . a:voice . '\.wav$'
			return file
		endif
	endfor
	return ""
endfunction

function! pronamachang#say(voice)
	call sound#play_wav(pronamachang#to_fullpath(a:voice))
endfunction


let s:RAND_MAX = 32767
let s:seed = localtime()

function! s:rand()
	let s:seed = s:seed * 214013 + 2531011
	return (s:seed < 0 ? s:seed - 0x80000000 : s:seed) / 0x10000 % 0x8000
endfunction

function! pronamachang#say_random(voices)
	if len(a:voices) == 0
		return
	endif
	return pronamachang#say(a:voices[ s:rand() % len(a:voices)])
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

