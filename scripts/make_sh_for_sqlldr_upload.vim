normal gg

:let s:schemaName         = ''
:let s:toDir              = '/home/oracle/TamBramsDataUpload'
:let s:tmpl               = '^\(XXDGEN3\|XXDGENERP\)\.\(.*\)$'
:let s:allShSqlldrCmd     = []
:let s:allShCsvCmd        = []

:while search(s:tmpl, 'eW')
:  let s:matchList    = matchlist(getline("."), s:tmpl)
:  let s:schemaName   = s:matchList[1]
:  let s:fileDirName  = s:matchList[1]
:  let s:fileName     = s:matchList[2]
:  let s:oraUserId    = s:schemaName.'/$'.s:schemaName.'_PWD'
:  let s:loadCmd      = 'sqlldr userid='.s:oraUserId.' LOG=ctl/'.s:fileName.'.log '
\                                .'CONTROL=ctl/'.s:fileName.'.ctl'.' '
:  let s:csvCmd       = 'sqlplus '.s:oraUserId.' @../download_csv.sql '.s:schemaName.' '.s:fileName
:  let s:csvCmd2      = "sed -i '/^$/d' csv/".s:fileName.'.csv'
:  :call add(s:allShSqlldrCmd, s:loadCmd)
:  :call add(s:allShCsvCmd,    s:csvCmd) 
:  :call add(s:allShCsvCmd,    s:csvCmd2) 
" :  echo "findddd! loadCmd: ".s:loadCmd
:endwhile

:let s:resSqlldrFileName  = s:schemaName.'/upload_all_csv_'.s:schemaName.'.sh'
:let s:resCsvFileName     = s:schemaName.'/download_all_csv_'.s:schemaName.'.sh'
:call insert(s:allShSqlldrCmd, s:schemaName.'_PWD='.s:schemaName)
:call insert(s:allShCsvCmd,    s:schemaName.'_PWD='.s:schemaName)
:let s:res1 = writefile(s:allShSqlldrCmd, s:resSqlldrFileName)
:let s:res2 = writefile(s:allShCsvCmd,    s:resCsvFileName)
:let s:res3 = system('chmod 775 '.s:resSqlldrFileName)
:let s:res4 = system('chmod 775 '.s:resCsvFileName)
:echo "res1: ".s:res1." res2: ".s:res2." res3: ".s:res3." res4: ".s:res4




