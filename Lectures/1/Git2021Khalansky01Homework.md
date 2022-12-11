Задание 1 по Unix
=================

Если всё записано в одну строчку, у Вас Windows, откройте этот файл в
[Notepad++](https://notepad-plus-plus.org/).

Настройка
---------

### Задание

Запустите shell.

### Решение

MacOS: откройте Terminal.app.

Linux: если не можете найти свой эмулятор терминала, как-нибудь установите
`xterm` и запустите его. Альтернативные варианты: `urxvt`, `rxvt`,
`xfce4-terminal`, `gnome-terminal`, `alacritty`...

Windows: в современных редакциях можно
[поставить WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10).
Иначе можно [поставить Cygwin](https://cygwin.com/install.html). Если и это не
получилось, пишите на <mailto:d.khalansky@gmail.com> либо [установите VirtualBox
с Ubuntu](https://itsfoss.com/install-linux-in-virtualbox/), что, кажется, не
может не сработать.

Можно ограничиться установкой [git bash](https://git-scm.com/downloads), но там
не хватает man- и info-страниц и многих программ.

Знакомство с командами
----------------------

### Задание

Почитайте man-страницы из первого раздела: `ls`, `cat`, `cd`, `rm`, `mv`, `cp`,
`mkdir`, `rmdir`, `wc`, `tee`, `tail`, `head`, `touch`, `echo`. Достаточно
понять описания команд и пробежаться глазами по флагам.

1. Напишите команду, которая выводит в файл `beauty.txt` в текущей директории
следующий текст (тройки наклонных кавычек --- часть синтаксиса Markdown, их не
надо включать):
```
"Beauty is bought by judgement of the eye."
-- Shakespear, Love's Labour's Lost
```

2. Реализуйте конвейер, который находит количество элементов (файлов,
поддиректорий и т. д.) текущей директории. Здесь и далее можно считать, что в
именах файлов не встречается переносов строки (хотя в теории в Unix они могут и
встречаться).

3. Напишите команду, которая находит число символов в десятой строчке из
поданных ей на стандартный ввод.

4. Предположите, что выведет последняя команда:
```
$ mkdir -p tempdir
$ cd tempdir
$ echo "Important  data" > important_file
$ echo gibberish > draft
$ mv draft important_file
$ ls; cat important_file
```
Запись команд через точку с запятой --- это команда, которая сначала исполнит
первую подкоманду, затем, когда первая завершилась, вторую, и так далее.

### Решение

1.
```sh
echo -e '"Beauty is bought by judgement of the eye"\n--' "Shakespear, Love's Labour's Lost" > beauty.txt
```

2.
```sh
ls -1 | wc -l
```

3.
```sh
head -n 10 | tail -n 1 | wc -m
```

4. Создаётся директория `temp`;
осуществляется переход в неё;
создаётся важный файл с содержимым `Important  data`;
создаётся черновик с содержимым `gibberish`;
черновик подменяет собой важный файл, стирая тот целиком;
`ls` выведет только `important_file` и перенос строки, а `cat` выдаст
`gibberish`.

Ответ:
```
important_file
gibberish
```

Подготовка
----------

### Задание

Установите git. Выполните последовательность команд:
```
$ mkdir testRepo
$ git -C testRepo init
$ git -C testRepo status
```
Что выведет последняя?

### Решение

```
On branch master

No commits yet

nothing to commit (create/copy files and use "git add" to track)
```
