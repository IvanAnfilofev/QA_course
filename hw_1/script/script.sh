#! /bin/bash
clear
mkdir sc_fld
# 3) Зайти в папку
cd sc_fld
echo
echo "3. зашли в папку sc_fld"
pwd
echo
# 4) Создать 3 папки
mkdir fld_1 fld_2 fld_3
echo "4. создали в папке sc_fld 3 новых папки: fld_1, fld_2, fld_3"
ls -l
echo
# 5) Зайти в любоую папку
cd fld_1
echo "5. зашли в папку fld_1"
pwd
echo
# 6) Создать 5 файлов (3 txt, 2 json)
touch f_1.txt f_2.txt f_3.txt f_4.json f_5.json
echo "6. Создали 5 файлов (3 txt, 2 json)"
ls -la
echo
# 7) Создать 3 папки
mkdir fld_4 fld_5 fld_6
echo "7. создали в папке fld_1 3 новых папки: fld_4, fld_5, fld_6"
echo
# 8. Вывести список содержимого папки
echo "8. Вывели список содержимого папки fld_1"
ls -la
echo
# 13 переместить любые 2 файла, которые вы создали, в любую другую папку.
cd ..
pt=$(pwd)/fld_2
cd fld_1
mv f_1.txt f_4.json $pt
echo "13 переместить любые 2 файла, которые вы создали, в любую другую папку."
ls -la $pt
echo
ls -la
echo
cd ../..
# *удаление
echo -n "* Есле нужно удалить созданые во время скрипта папки и файлы, то нажми 0 (ноль) "
read st2
if [ $st2 -eq 0 ]
	then rm -r sc_fld
		echo "Удаление выполнено."
	else echo "Нет, так нет. Как хочешь!!!"
fi
