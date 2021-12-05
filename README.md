# own_OnionShare_send_URL

Script for working with crontab

Мне понадобился скрипт, который можно было бы скормить crontab для автоматизации OnionShare в режиме приёма файлов. Это
приложение каждый раз генерить URL новый для использования Tor Browser.

Сложность в том, что onionshare выдаёт листинг, а не в файл и не заканчивает работу, ожидая команду Ctrl+C. В выдаче на
терминал указывается URL через который можно отправить любые файлы на мой компьютер.

Данный скрипт запускает onionshare в режиме приёма файлов, сохраняет выхлоп с необходимым URL в файл директории,
указанную в коде - я буду использовать Dropbox. 

Depends :

https://docs.onionshare.org/2.4/en/install.html#linux

или: 

sudo apt install onionshare // Ubuntu

 sudo apt install psmisc

 sudo apt install ttyrec


