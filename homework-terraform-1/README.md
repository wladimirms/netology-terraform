## Домашняя работа по модулю "Введение в Terraform"

# Подготовка

1.Скачиваю и премещаю исполняемый файл terraform на машину. Проверяю версию:

<img width="796" alt="Снимок экрана 2024-07-28 в 14 20 17" src="https://github.com/user-attachments/assets/985bb569-3932-4e4c-a197-566858cb1427">

<img width="780" alt="Снимок экрана 2024-07-28 в 14 22 41" src="https://github.com/user-attachments/assets/72db05e4-4c50-46c1-848b-566b36a03014">

2.Подключаю зеркало Яндекс:

<img width="544" alt="Снимок экрана 2024-07-28 в 14 25 25" src="https://github.com/user-attachments/assets/fca00c2e-decb-481c-b24b-95e946f3a715">

# Задание 1

1. В каталоге src инициализирую проект терраформ:

<img width="1013" alt="Снимок экрана 2024-07-28 в 14 28 23" src="https://github.com/user-attachments/assets/9b6b1a64-814c-4c01-b6cd-a4362d3ebafd">

2.Cогласно этому .gitignore, допустимо сохранить личную, секретную информацию (логины,пароли,ключи,токены итд) в файле personal.auto.tfvars

<img width="483" alt="Снимок экрана 2024-07-28 в 14 30 52" src="https://github.com/user-attachments/assets/4a831bbe-5c96-46a9-a5eb-0b207dcc99b7">

3.Запускаю проект. В tfstate создались необходимые значения

<img width="669" alt="Снимок экрана 2024-07-28 в 14 34 00" src="https://github.com/user-attachments/assets/7c9a598e-1cfa-473e-bdc1-5698f8606236">

<img width="728" alt="Снимок экрана 2024-07-28 в 14 35 33" src="https://github.com/user-attachments/assets/2a638fd1-d2a0-413b-9c05-f87a35d10520">

4. Раскомментировал блоки в main.tf и запустил validate

<img width="1001" alt="Снимок экрана 2024-07-28 в 14 49 05" src="https://github.com/user-attachments/assets/4188c893-b0e4-4ef0-b487-074e04638a12">

<img width="973" alt="Снимок экрана 2024-07-28 в 14 53 45" src="https://github.com/user-attachments/assets/31a51f3d-1838-4656-affd-bd696ecf33ac">

Ошибки:
- нет второго параметра в ресурсе docker_image, нужно добавить nginx
- в ресурсе с контейнером ошибка 1nginx, нельзя начинать с цифр, должен быть nginx
- в имени нужно убрать _FAKE и resulT сменить на result

5.Исправленный main.tf:

<img width="463" alt="Снимок экрана 2024-07-28 в 14 58 56" src="https://github.com/user-attachments/assets/51c3ae88-e5c3-433e-8f12-7be88e57b7fe">

Запускаю terraform и создается контейнер в докере c портом 9090:

<img width="1229" alt="Снимок экрана 2024-07-28 в 15 02 44" src="https://github.com/user-attachments/assets/7771ed9a-84ab-4a00-845a-418a6da6472f">

6. Заменил имя контейнера на hello-world и запустил apply --auto-approve

<img width="1406" alt="Снимок экрана 2024-07-28 в 15 14 32" src="https://github.com/user-attachments/assets/52f73308-4a86-464d-8d8d-59ceb2ac10c5">

Видно что ресурс сначала уничтожается, пытется подняться и завершается с ошибкой. Так как контейнер с таким именем уже существует.
Таким образом очень опасно запускать с этим флагом, так как можно положить всю работающую инфраструкту одним движением.

Запускаю его еще раз и контейнер поднимается без вопроса да/нет:

<img width="1226" alt="Снимок экрана 2024-07-28 в 15 19 26" src="https://github.com/user-attachments/assets/826d3f60-853b-4fd7-80c1-79952c554d11">

Этот параметр можно применять если до этого был проверен и утвержден план:

<img width="673" alt="Снимок экрана 2024-07-28 в 15 21 40" src="https://github.com/user-attachments/assets/04cf59fc-36c0-4dd5-b7f6-10f3bf73b233">

7. Уничтожаю ресурсы при помощи destroy

<img width="912" alt="Снимок экрана 2024-07-28 в 15 25 41" src="https://github.com/user-attachments/assets/eb078169-ce52-4271-b0b2-68083b295f04">

tfsate до:

<img width="621" alt="Снимок экрана 2024-07-28 в 15 23 18" src="https://github.com/user-attachments/assets/8ee62e8a-16b9-485d-8822-bafb7b502172">

и после:

<img width="497" alt="Снимок экрана 2024-07-28 в 15 25 10" src="https://github.com/user-attachments/assets/1b8529dd-4e25-4f4c-83a1-df7e35e2d287">


