## Процесс сдачи

Для сдачи домашнего задания Вам необходимо

0. В идеале, сгенерировать ssh-ключ и добавить его : [инструкция](https://docs.gitlab.com/ee/ssh/#generate-an-ssh-key-pair) и добавить его в свой аккаунт на gitlab: [инструкция](https://docs.gitlab.com/ee/ssh/#add-an-ssh-key-to-your-gitlab-account).


1. Первым делом нужно сделать **приватный** форк данного репозитория
(кнопочка Fork вверху репозитрория) и добавить в него меня:

- Алексей Зубаков: @ottergottaott

2. Склонировать форк к себе на компьютер:
```
$ git clone git_url_of_your_repo 
```
где `git_url_of_your_repo` -- url к вашему репозиторию.

3. Добавить url основного репозитория к своему в качестве remote.

```
$ git add upstream ...
```

Посмотреть уже существующие remote можно следующей командой:
```
$ git remote -v
origin	git@gitlab.com:aleks.zubakov/unix.git (fetch)
origin	git@gitlab.com:aleks.zubakov/unix.git (push)
upstream	git@gitlab.com:sl/unix-22.git (fetch)
upstream	git@gitlab.com:sl/unix-22.git (push)
```
`origin` -- Ваш fork. 

4. Выгрузить новые ветки из общего оригинального репозитория, 
добавленные преподавателем:
```
$ git fetch upstream
```
Новые ветки будут видны в списке всех веток:
```
$ git branch -a
* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/hw3
  remotes/origin/master
  remotes/upstream/hw3
  remotes/upstream/master
```

В данном случае это `remotes/upstream/master` и `remotes/upstream/hw3`. 

Домашки будут выкладываться в ветки вида `hwN`, где `N` -- номер 
дз. (_Для магистров Вышки домашнее заданее будет одно, позже дополнительное_).

Далее Вам необходимо перейти на только что выгруженную ветку и запушить
("отправить") ее в свой форк:
```
$ git checkout upstream/hw3
$ git push origin hw3
```

**Никаких изменений в эту ветку вносить не нужно, Вы будете работать с другой веткой!**

5. Создать ветку вида `hwN-dev`, в которой будет Ваше решение
```
$ git checkout -b hw3-dev
```
git автоматически переведет Вас в ветку `hw1-dev`, если нужно перейти в какую-то 
другую (в данном случае в main):
```
$ git checkout main 
```

6. Внести свои изменения, с помощью команд `git add`, `git commit` сформировать
коммиты с решениями задач (структура комитов остается на Ваше усмотрение).

7. При готовности запушить рабочую ветку (`hw3-dev`) в Ваш форк:
```
$ git push origin hw3-dev
```

и создать Pull Request. 

Требования к Pull Reguest, где N -- номер домашнего задания:

- MR должен создаваться из ветки `hwN-dev` в ветку `hwN` Вашего
**приватного** форка;
- MR должен быть назван следующим образом: **Unix. ДЗ N, <Фамилия> <Имя>**;
- В PR нужно добавить меня в качестве Assignee;

8. Исправления добавляются в ту же ветку в тот же самый PR (новый PR 
создавать не нужно) также, как и перед отправкой. Для этого достаточно запушить 
изменения в ветку `hwN-dev` и переоткрыть старый PR.
