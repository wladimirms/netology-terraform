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

<img width="546" alt="Снимок экрана 2024-08-04 в 15 24 56" src="https://github.com/user-attachments/assets/f42948c9-fca9-4e54-b3f0-f4cdd1cbb442">

4. Запускаю plan. Создается ресурс storage и три виртуальных диска:

<img width="631" alt="Снимок экрана 2024-08-04 в 15 28 47" src="https://github.com/user-attachments/assets/ece6e35d-ddd9-4c54-9212-abc358432443">
<img width="1004" alt="Снимок экрана 2024-08-04 в 15 34 55" src="https://github.com/user-attachments/assets/f1cbb88a-a1a6-49ba-82a5-90883551df91">
<img width="580" alt="Снимок экрана 2024-08-04 в 15 29 50" src="https://github.com/user-attachments/assets/46106f34-ba2a-4a38-ba10-28af990133a4">

# Задание 4










