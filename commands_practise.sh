## Базовые команды

touch my.txt
mkdir my_dir
mv ./my.txt my_dir
cd my_dir
cp my.txt ../
cd ..
rm -rf my_dir


## Работа с файлами

# Найдите подходящий лог для экспериментов в папке /var/log на вашем установленном дистрибутиве линукс

cd /var/log
grep "upgraded" ./pacman.log
cat ./pacman.log | grep "upgraded"

cd ~
echo "str1" >> test1.log
# в отдельном терминале открываем:
tail -f ./test.log

echo "str2" >> test1.log
echo "str3" >> test1.log

less ./test.log
# Нажимаем / и вводим искомое вхождение текста, после Enter

## Перенаправление потоков

ls -l > stdout
cat stdout

ls -l jjjj 2> stderr
cat stderr

cat stdout | grep ^-
cat stdout | grep ^- | grep "rw"

ls -l jjjj ./ 2> stderr1 1> stdout1
cat stdout1
cat stderr1

# Указатели
ls -l jjjj ./ 2>&1 1> /dev/null | grep jjjj

