# myvim

Здесь будет хранится .vimrc и скрипты \*.vim. 

# Любимые кнопки

| Кнопка                   | Что делает                                                               | Режим (если не указан, то Normal) |
|--------------------------|:-------------------------------------------------------------------------|:----------------------------------|           
| gg G                     | перейти в начало/конец файла                                             |                                   |
| w b e W B E              | переход по словам (на начало вперёд, начало назад, конец вперёд)         |                                   |
| i a I A                  | начать редактировать (тут же, после курсора, в конце строки)             |                                   |
| ea                       | начать редактировать с конца текущего слова                              |                                   |
| \<Shift\>-$ \<Shift>-^   | переход в начало/конец строки                                            |                                   |
| u Ctrl-R                 | Undo Redo                                                                |                                   |
| u U                      | смена регистра букв                                                      | Visual                            |
| qa.....q                 | записать макрос в "a"                                                    |                                   |
| @a                       | проиграть макрос "a"                                                     |                                   |
| yy                       | скопировть строку у буфер                                                |                                   |
| p P                      | вставить из буфера перед или после текущей строки                        |                                   |
| diw dw                   | удалить слово под курсором (всё или до конца слова)                      |                                   |
| dt\<char\> df\<char\>    | удалить всё от курсора _**до**_ символа или _**вместе с**_ символом      |                                   |
| t\<char\> T\<char\>      | вперёд/назад _**до**_ следующего появления символа                       |                                   |
| f\<char\> F\<char\>      | вперёд/назад _**за**_ следующее появление символа                        |                                   |
|                          |                   |                                   |
|                          |                   |                                   |
 
  
  
# Полезные, которые нужно выучить
  
| Кнопка                   | Что делает                                                          | Режим (если не указан, то Normal) |
|--------------------------|:--------------------------------------------------------------------|:----------------------------------|           
| g; g,                    | возврат к месту последнего редактирования (и перемещение по ним)    |                                   |
| %                        | если под курсором скобки, то переместиться к парной скобке          |                                   |
| mk `k                    | установить метку "k" перейти к метке "k"                            |                                   |
|                          |                                                  |                                   |
|                          |                   |                                   |
|                          |                   |                                   |
|                          |                   |                                   |
 

# Поиск и замена
  
| Кнопка                   | Что делает                                                          | Режим (если не указан, то Normal) |
|--------------------------|:--------------------------------------------------------------------|:----------------------------------|           
| /word ?word              | Начать поиск "word" сверху-вниз или снизу-вверх                     |                                   |
| n N                      | Переход к следующему/предыдущему найденному                         |                                   |
| :noh                     | Отмена всех выделений                                               |                                   |
| /\\<the  /the\\>         | Искать слова начинающиеся/заканчивающиеся на "the"                  |                                   |
| /use\\\|mode             | Искать слова с "use" или "mode"                                     |                                   |
| /^\n\\{3}                | Искать 3 пустые строки                                              |                                   |
| :bufdo /word/            | Искать "word" во всех буферах                                       |                                   |
| :%s/old/new/giw          | Замена всех "old" на "new" (w - с запросом подтверждения, i - с учётом регистра)           |                                   |
| :2,35s/old/new/g         | Замена всех "old" на "new" между 2 и 35 строками                    |                                   |
| :%s/^/the/g :%s/$/the/g  | Добавить "the" в начала или конец каждой строки                     |                                   |
| :g/str/d :v/str/d        | Удалить строки (g - содержащие "str", v - не содержащие "str"       |                                   |
|                          |                   |                                   |
  
# Создание окон и буферов
  
| Кнопка                   | Что делает                                                          | Режим (если не указан, то Normal) |
|--------------------------|:--------------------------------------------------------------------|:----------------------------------|           
| :split :vsplit           | Разбить окно горизонтально/вертикально                              |                                   |
| \<Ctrl\>-W sv            | Разбить окно горизонтально/вертикально                              |                                   |
| \<Ctrl\>-W dfjk          | Перейти на окно влево/вправо/вниз/вверх                             |                                   |
| \<Ctrl\>-W oc            | Развернуть/закрыть окно                                             |                                   |
| :help window-moving      | Помощь по движению окон                                             |                                   |       
| \<Ctrl\>-W wW            | Перейти на следущее/предыдущее окно                                 |                                   |
| \<Ctrl\>-W r             | Вращать окна                                                        |                                   |
| \<Ctrl\>-W x             | Поменять текущее окно местами со следующим                          |                                   |
| \<Ctrl\>-W =             | Сделать все окна одинакового размера                                |                                   |
| 10 \<Ctrl\>-W +-         | Увеличить/уменьшить размер окна по вертикали на 10 строк            |                                   |
| 10 \<Ctrl\>-W <>         | Увеличить/уменьшить размер окна по горизонтали 10 колонок           |                                   |
| :ls                      | Список буферов                                                      |                                   |
| :bn :bp                  | Перейти на следующий/прудыдущий буфер                               |                                   |
| :b 23                    | Перейти на буфер 23                                                 |                                   |
|                          |                   |                                   |
|                          |                   |                                   |

# Команды

| Кнопка                   | Что делает                                                          | Режим (если не указан, то Normal) |
|--------------------------|:--------------------------------------------------------------------|:----------------------------------|           
| Ctrl-V выбор строк, Shift-I, //, Esc     | Пометить строки и вставить в начало знак комментария                  |                                   |
|                          |                   |                                   |
|                          |                   |                                   |
