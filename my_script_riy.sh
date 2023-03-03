#!/bin/bash

# Створюємо каталоги та підкаталоги
mkdir -p my_project/student_info
mkdir -p my_project/other_files

# Створюємо файли з вказаними даними
echo "Олексанр" > my_project/student_info/name.txt
echo "Рій" > my_project/student_info/surname.txt
echo "Група: КІ-412" > my_project/student_info/info.txt
echo "Дата виконання: 15:01 26.02.2023" >> my_project/student_info/info.txt
echo "Email: rigs4407@gmail.com" >> my_project/student_info/info.txt

echo "Всі файли успішно створені."

# Копіюємо файли з підкаталогів в кореневий каталог
cp my_project/student_info/* my_project/other_files/
echo "Всі файли успішно скопійовані."

# Перевірка електронної пошти у файлі з регулярним виразом
grep -Eo '[\w\.-]+@[\w\.-]+\.[\w]{2,4}' my_project/student_info/info.txt | grep -q rigs4407@gmail.com && echo "Поштова скринька незнайлена." || echo "Поштова скринька знайдена."
