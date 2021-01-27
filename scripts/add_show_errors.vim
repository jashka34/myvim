:if exists("*XxAddShowErrors") 
:  delfunction XxAddShowErrors
:endif

function XxAddShowErrors()
  :let s:tmpl     = '\s*CREATE OR REPLACE.*\sEDITIONABLE\s\(VIEW\|\PACKAGE BODY\|PACKAGE\|PROCEDURE\|FUNCTION\|TRIGGER\|TYPE BODY\|TYPE\)\s"\(.\{-}\)"\."\(.\{-}\)"'
  :let s:lineNum  = search(s:tmpl, 'n')
  :if s:lineNum == 0
      return
  :endif
  :let s:line     = getline(s:lineNum)
  " echo "find string="s:line
  :let s:matchedList = matchlist(s:line, s:tmpl)
  " echo "list: "s:matchedList
  :let s:objType = s:matchedList[1]
  :let s:objSchm = s:matchedList[2]
  :let s:objName = s:matchedList[3]
  :let s:objFullName = "\"" . s:objSchm . "\".\"". s:objName . "\""
  " echo "find object: "s:objType s:objFullName 
  :let s:tmpl2    = "^\/$"
  :let s:lineNum2 = search(s:tmpl2)
  :let s:line2    = getline(s:lineNum2)
  " echo "find / lineNum: "s:lineNum2
  " echo "find string2="s:line2
  :if s:lineNum2 > 0 
    " :let failed = append(s:lineNum2,"show errors "  . s:objType . " " . s:objFullName)
    :let failed = append(s:lineNum2,"show errors "  . s:objType . " " . s:objName)
  :endif
endfunction

normal gg
" :g/\r$/s/\r//
" :let confirm1 = confirm("Go?", "&Yes")
:let s:lineNum0 = search("^show errors ")
:if s:lineNum0 == 0 
    call XxAddShowErrors()
:endif
