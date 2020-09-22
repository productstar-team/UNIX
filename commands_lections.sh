## Работа с файлами

grep "Failed" ./log
tail -n 5 ./log
tail -f ./log
more ./log
less ./log

## Перенаправление потоков

ls -l > stdout
ls -l qqqq 2> stderr
ls -l qqqq ./ 2> stderr 1> stdout
cat stdout | grep ^-
cat stdout | grep ^- | grep rwx

## tee

ls -l  | tee -a file

## Потоки и указатели

ls -l asdf ./ 1> file 2>&1
