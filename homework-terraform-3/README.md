## Домашнее задание к модулю "Управляющие конструкции с Terraform"

# Задание 1

1.Заполняю personal.auto.tfvars:

<img width="642" alt="Снимок экрана 2024-08-01 в 21 46 40" src="https://github.com/user-attachments/assets/edca8366-23f8-4758-9628-d23b5c1a3fa8">

2.Применяю терраформ и проверяю в ЛК созданные группы безопасности:

<img width="963" alt="Снимок экрана 2024-08-01 в 21 50 07" src="https://github.com/user-attachments/assets/3e7048a7-0eba-4755-a5e2-c9c99a781477">

# Задание 2

1.Создаю локльную переменную с ключом для metadata:

<img width="443" alt="Снимок экрана 2024-08-04 в 14 55 25" src="https://github.com/user-attachments/assets/303e0c74-2cc6-46aa-8507-07369db47161">

2.Создаю файл count-vm.tf и создаю map object переменную vms_resources с перечислением ресурсов

<img width="267" alt="Снимок экрана 2024-08-04 в 14 56 28" src="https://github.com/user-attachments/assets/45eb2855-31d5-494b-92d0-bf85066599a5">

3.Итерируюсь по ресурсам с помощью цикла count и добавляю массив из созданной группы безопасности с помощью security_group_ids. Создание ресурса web будет запускаться после db при помощи depends_on:

<img width="604" alt="Снимок экрана 2024-08-04 в 14 43 38" src="https://github.com/user-attachments/assets/a49dea01-1172-4c19-9e82-13aa7291fa3a">

4.Создаю файл for_each-vm.tf и создаю list переменную each_vm с перечислением ресурсов и именами main и replica. Добавляю core_fraction для экономии ресурсов:

<img width="216" alt="Снимок экрана 2024-08-04 в 14 44 32" src="https://github.com/user-attachments/assets/0da806c7-6da8-4144-9ff8-2b6a2084625b">

3.Итерируюсь по ресурсам с помощью цикла count:

<img width="520" alt="Снимок экрана 2024-08-04 в 15 00 31" src="https://github.com/user-attachments/assets/5d2e79b6-1366-4edf-9c25-130bce886826">

4.Запускаю plan и создаются 4 ресурса c разными значениями для db:

<img width="991" alt="Снимок экрана 2024-08-04 в 15 04 31" src="https://github.com/user-attachments/assets/8a47f4dd-6487-4c29-be3c-8868d17cd43a">
<img width="989" alt="Снимок экрана 2024-08-04 в 15 04 46" src="https://github.com/user-attachments/assets/fa78b1ff-1657-4057-a37d-cca051e9cdb6">
<img width="990" alt="Снимок экрана 2024-08-04 в 15 05 08" src="https://github.com/user-attachments/assets/1d230509-abe3-4f98-9503-1e9acfe254e6">
<img width="987" alt="Снимок экрана 2024-08-04 в 15 05 20" src="https://github.com/user-attachments/assets/8f2fe150-2fb4-4444-b256-33544c8799fc">
<img width="210" alt="Снимок экрана 2024-08-04 в 15 19 56" src="https://github.com/user-attachments/assets/38be42cd-a2e0-46c0-9449-0e9fcdc1c051">
<img width="214" alt="Снимок экрана 2024-08-04 в 15 20 07" src="https://github.com/user-attachments/assets/db1b78cb-9c9d-45fd-a942-9912f03be6a6">

# Задание 3

1.Создаю 3 виртуальных hdd размером 1Гб при помощи цикла count и переменной:

<img width="561" alt="Снимок экрана 2024-08-04 в 15 10 42" src="https://github.com/user-attachments/assets/722bc949-7b5f-4612-848e-a2553fa4acc0">
<img width="238" alt="Снимок экрана 2024-08-04 в 15 11 24" src="https://github.com/user-attachments/assets/2e1ec51e-126e-4355-93b7-97d40f1c8756">

2.Создаю ресурс storage с параметром создания после 3х hdd со следующими значениями в переменной:

<img width="599" alt="Снимок экрана 2024-08-04 в 15 22 38" src="https://github.com/user-attachments/assets/f72bb696-d190-45a7-9442-09004e228ef4">
<img width="214" alt="Снимок экрана 2024-08-04 в 15 23 20" src="https://github.com/user-attachments/assets/56f301d1-8af9-463b-bc4a-82e0c86c8941">

3. Использую блок dynamic secondary_disk, где итерируюсь по создающимся дискам с целью подключения к storage:

<img width="370" alt="Снимок экрана 2024-08-06 в 21 26 40" src="https://github.com/user-attachments/assets/dacf62dc-7ace-49cd-8340-c3302caf5448">

4. Запускаю plan. Создается ресурс storage и три виртуальных диска:

<img width="631" alt="Снимок экрана 2024-08-04 в 15 28 47" src="https://github.com/user-attachments/assets/ece6e35d-ddd9-4c54-9212-abc358432443">
<img width="1004" alt="Снимок экрана 2024-08-04 в 15 34 55" src="https://github.com/user-attachments/assets/f1cbb88a-a1a6-49ba-82a5-90883551df91">
<img width="580" alt="Снимок экрана 2024-08-04 в 15 29 50" src="https://github.com/user-attachments/assets/46106f34-ba2a-4a38-ba10-28af990133a4">

# Задание 4

1.Провожу создание inventory в файле ansible.tf c тремя группами ВМ:

<img width="500" alt="Снимок экрана 2024-08-04 в 18 42 25" src="https://github.com/user-attachments/assets/cdd17e18-c9e4-4a77-960e-1eb74f8180dd">

2.Создаю щаблон tftpl и добавляю переменную fqdn auto:

<img width="747" alt="Снимок экрана 2024-08-04 в 18 44 27" src="https://github.com/user-attachments/assets/97730f7e-76c6-44b6-b569-a50770fa295f">

3. Устанавливаю провайдер hashicorp/local для работы с templatefile:

<img width="566" alt="Снимок экрана 2024-08-04 в 18 46 52" src="https://github.com/user-attachments/assets/9471688e-2adb-4ebc-823a-1a37fb5f811a">
<img width="566" alt="Снимок экрана 2024-08-04 в 18 47 14" src="https://github.com/user-attachments/assets/a8cefa36-6e6c-4c99-a872-9bc80d808fe8">

4.Применяю код. Создаю заново все ресурсы.

<img width="699" alt="Снимок экрана 2024-08-04 в 18 50 12" src="https://github.com/user-attachments/assets/cefafc71-33b2-4447-9ee2-ef4c03ed50c8">

Проверяю ЛК:

<img width="1382" alt="Снимок экрана 2024-08-04 в 18 34 17" src="https://github.com/user-attachments/assets/6aa05886-5988-4474-8d4d-833aacd47179">
<img width="1382" alt="Снимок экрана 2024-08-04 в 18 35 16" src="https://github.com/user-attachments/assets/26b68ae6-a3ea-4bb3-8703-43ba6a8f2c72">

Итоговый файл inventory:

<img width="816" alt="Снимок экрана 2024-08-04 в 18 26 13" src="https://github.com/user-attachments/assets/779855be-e23b-463c-ae05-fc0094c8b70b">
















