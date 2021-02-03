normal gg
:let s:fromDir    = '/home/oracle/tambov-brams-ms'
:let s:toDir      = '/home/oracle/TamBramsDataUpload'
:let s:tmpl       = '^\(XXDGEN3\|XXDGENERP\)\.\(.*\)$'
:let s:count      = 0
:let s:countErr   = 0
:while search(s:tmpl, 'eW')
:  let s:matchList    = matchlist(getline("."), s:tmpl)
:  let s:fileDirName  = s:matchList[1]
:  let s:fileName     = s:matchList[2]
:  let s:cpCmd        = 'cp '.s:fromDir.'/'.s:fileDirName.'/TABLES/'.s:fileName .'.sql'.' '
\                            .s:toDir  .'/'.s:fileDirName.'/ctl/'   .s:fileName .'.ctl'
"   echo "findddd! match: " . s:dirName . " " . s:fileName
:  let s:res = system(s:cpCmd)
:  if s:res != ''
:    echo "error copy: " . s:res
:    let s:countErr = s:countErr + 1
:  else
:    let s:count = s:count + 1
:  endif
:endwhile
:echo "copy " . s:count " files. errCount: " . s:countErr


