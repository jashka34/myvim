:if exists("*XxMakeSqlldrCtl") 
:  delfunction XxMakeSqlldrCtl
:endif
:if exists("*XxDelLine") 
:  delfunction XxDelLine
:endif
:if exists("*XxClearAll") 
:  delfunction XxClearAll
:endif

function XxDelLine(tmp)
  normal gg
  :while search(a:tmp, 'cw') > 0
    normal dd
  :endwhile 
  return
endfunction

function XxClearAll(tmp)
  execute '%s/' . a:tmp . '//g'
endfunction

function XxMakeSqlldrCtl()
  call XxClearAll('\r$')
  call XxClearAll('\s*;$')
  call XxDelLine('^-\+$')
  call XxDelLine('^--\s*DDL for.*$')
  call XxDelLine('\s*CREATE TABLE.*$')
  call XxDelLine('^\s*$')
  call XxDelLine('^\s*GRANT\s\+.*ON\s\+.*$')
  call XxDelLine('^\s*COMMENT\s\+.*ON\s\+.*$')
  call append(0, bufname("%"))
  :%s/^.*\/\(.*\).ctl$/OPTIONS (SKIP=1)\rLOAD DATA\rINFILE      'csv\/\1\.csv'\rBADFILE     \1\.bad\rDISCARDFILE \1\.dsc\rREPLACE\rINTO TABLE \1/
  call append(line('.'), "FIELDS TERMINATED BY '|' OPTIONALLY ENCLOSED BY '\"' TRAILING NULLCOLS")
  :+2,$s/"//g
  :%s/\<NUMBER\>\((.*)\)*/integer external/g
  :%s/\<VARCHAR2\>/CHAR/g
  :%s/\<DATE\>/DATE 'DD.MM.YY'/g
  :%s/\<CLOB\>/CHAR(40000)/g
endfunction

normal gg
:let s:lineNum0 = search("^LOAD DATA")
:if s:lineNum0 == 0 
  call XxMakeSqlldrCtl()
  update
:endif
