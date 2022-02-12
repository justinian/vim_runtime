" Vim syntax file
" Language:     jsix interface definitions
" Maintainer:   Justin C Miller (justin@justin.cm)
" Updated:      2022-02-12
"

if exists("b:current_syntax")
    finish
endif

syn keyword defStruct           interface nextgroup=defIdentifier skipwhite

syn keyword defStmt             expose
syn keyword defStmt             function nextgroup=defFunction skipwhite
syn keyword defStmt             method nextgroup=defFunction skipwhite
syn keyword defStmt             param nextgroup=defIdentifier skipwhite

syn match   defComment          "#.*$"
syn match   defIdentifier       "[a-zA-Z_][a-zA-Z0-9_]*" contained
syn match   defFunction         "[a-zA-Z_][a-zA-Z0-9_]*" contained
syn match   defObjectName       "[a-zA-Z_][a-zA-Z0-9_]*" contained
syn match   defUidNum           "\v[a-fA-F0-9]+" contained

syn keyword defBasicType        size string buffer address
syn match   defBasicType        "u\?int\(8\|16\|32\|64\)\?"

syn keyword defRef              ref nextgroup=defObjectName skipwhite
syn keyword defUid              uid nextgroup=defUidNum skipwhite


syn region  defOptions          start="\[" end="\]" contains=defOptionName,defCap
syn match   defOptionName       "[a-z_]*" contained
syn match   defCap              "cap:" nextgroup=defOptionName contained

syn keyword defImport           import nextgroup=defFilename skipwhite
syn region  defFilename         start='"' end='"' contained


if !exists("did_def_syn_inits")
  let did_def_syn_inits = 1

  hi link defComment            Comment

  hi link defImport             Preproc
  hi link defFilename           Directory

  hi link defStruct             Structure
  hi link defStmt               Statement
  hi link defBasicType          Type
  hi link defObjectName         Type
  hi link defRef                Special
  hi link defUid                Special
  hi link defUidNum             Constant

  hi link defIdentifier         Identifier
  hi link defFunction           Function

  hi link defOptions            Special
  hi link defOptionName         Constant
  hi link defCap                Special

endif

let b:current_syntax = "j6def"
