" Vim filetype plugin file
" Language:      Raku
" Maintainer:    rakoons <perl6-users@perl.org>
" Homepage:      https://github.com/raku/vim-raku
" Bugs/requests: https://github.com/raku/vim-raku/issues
" Last Change:   {{LAST_CHANGE}}
" Contributors:  Hinrik Örn Sigurðsson <hinrik.sig@gmail.com>
"
" Based on ftplugin/perl.vim by Dan Sharp <dwsharp at hotmail dot com>

if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

" Make sure the continuation lines below do not cause problems in
" compatibility mode.
let s:save_cpo = &cpo
set cpo-=C

setlocal formatoptions-=t
setlocal formatoptions+=crqol
setlocal keywordprg=p6doc

setlocal comments=:#\|,:#=,:#
setlocal commentstring=#%s

" Provided by Ned Konz <ned at bike-nomad dot com>
"---------------------------------------------
setlocal include=\\<\\(use\\\|require\\)\\>
setlocal includeexpr=substitute(v:fname,'::','/','g')
setlocal suffixesadd=.pm6,.rakumod
setlocal define=[^A-Za-z_]

" The following line changes a global variable but is necessary to make
" gf and similar commands work. Thanks to Andrew Pimlott for pointing out
" the problem. If this causes a " problem for you, add an
" after/ftplugin/raku.vim file that contains
"       set isfname-=:
set isfname+=:
setlocal iskeyword=@,48-57,_,192-255,-

if exists('$RAKULIB')
    let &l:path = "lib,.,".$RAKULIB.",".join(glob("~/.zef/store/*/*/lib",0,1),',')
else
    let &l:path = "lib,.,".join(glob("~/.zef/store/*/*/lib",0,1),',')
endif

" Convert ascii-based ops into their single-character unicode equivalent
if get(g:, 'raku_unicode_abbrevs', 0)
    iabbrev <buffer> !(<) ⊄
    iabbrev <buffer> !(<=) ⊈
    iabbrev <buffer> !(>) ⊅
    iabbrev <buffer> !(>=) ⊉
    iabbrev <buffer> !(cont) ∌
    iabbrev <buffer> !(elem) ∉
    iabbrev <buffer> != ≠
    iabbrev <buffer> (&) ∩
    iabbrev <buffer> (+) ⊎
    iabbrev <buffer> (-) ∖
    iabbrev <buffer> (.) ⊍
    iabbrev <buffer> (<) ⊂
    iabbrev <buffer> (<+) ≼
    iabbrev <buffer> (<=) ⊆
    iabbrev <buffer> (>) ⊃
    iabbrev <buffer> (>+) ≽
    iabbrev <buffer> (>=) ⊇
    iabbrev <buffer> (\|) ∪
    iabbrev <buffer> (^) ⊖
    iabbrev <buffer> (atomic) ⚛
    iabbrev <buffer> (cont) ∋
    iabbrev <buffer> (elem) ∈
    iabbrev <buffer> * ×
    iabbrev <buffer> **0 ⁰
    iabbrev <buffer> **1 ¹
    iabbrev <buffer> **2 ²
    iabbrev <buffer> **3 ³
    iabbrev <buffer> **4 ⁴
    iabbrev <buffer> **5 ⁵
    iabbrev <buffer> **6 ⁶
    iabbrev <buffer> **7 ⁷
    iabbrev <buffer> **8 ⁸
    iabbrev <buffer> **9 ⁹
    iabbrev <buffer> ... …
    iabbrev <buffer> / ÷
    iabbrev <buffer> << «
    iabbrev <buffer> <<[=]<< «=«
    iabbrev <buffer> <<[=]>> «=»
    iabbrev <buffer> <= ≤
    iabbrev <buffer> =~= ≅
    iabbrev <buffer> >= ≥
    iabbrev <buffer> >> »
    iabbrev <buffer> >>[=]<< »=«
    iabbrev <buffer> >>[=]>> »=»
    iabbrev <buffer> Inf ∞
    iabbrev <buffer> atomic-add-fetch ⚛+=
    iabbrev <buffer> atomic-assign ⚛=
    iabbrev <buffer> atomic-fetch ⚛
    iabbrev <buffer> atomic-dec-fetch --⚛
    iabbrev <buffer> atomic-fetch-dec ⚛--
    iabbrev <buffer> atomic-fetch-inc ⚛++
    iabbrev <buffer> atomic-inc-fetch ++⚛
    iabbrev <buffer> atomic-sub-fetch ⚛−=
    iabbrev <buffer> e 𝑒
    iabbrev <buffer> o ∘
    iabbrev <buffer> pi π
    iabbrev <buffer> set() ∅
    iabbrev <buffer> tau τ
endif

" Undo the stuff we changed.
let b:undo_ftplugin = "setlocal fo< com< cms< inc< inex< def< isf< isk< kp< path<" .
        \         " | unlet! b:browsefilter"

" Restore the saved compatibility options.
let &cpo = s:save_cpo
unlet s:save_cpo
