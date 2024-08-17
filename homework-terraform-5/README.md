## Домашнее задание к модулю "Использование Terraform в команде"

# Задание 1

1.Устанавливаю checkov на macOS:

<img width="458" alt="Снимок экрана 2024-08-15 в 21 46 16" src="https://github.com/user-attachments/assets/11dd9567-fe84-407c-94b5-db3fbd65800a">

2.В директории ДЗ№4 импортирую терраформ план в бинарный файл:

<img width="679" alt="Снимок экрана 2024-08-15 в 21 32 22" src="https://github.com/user-attachments/assets/eabc7302-46ba-470e-9db2-575cdc230b9f">
<img width="502" alt="Снимок экрана 2024-08-15 в 21 33 08" src="https://github.com/user-attachments/assets/88abfde7-f26d-4453-a09c-4fdbe8944866">

3.Конвертирую файл в json:

<img width="805" alt="Снимок экрана 2024-08-15 в 21 49 49" src="https://github.com/user-attachments/assets/0d38a1d4-ff93-45a5-8674-8af42d1588ae">

4.Запускаю checkov и получаю результат сканирования:

<img width="779" alt="Снимок экрана 2024-08-15 в 21 41 19" src="https://github.com/user-attachments/assets/cdde59aa-c718-422f-80a1-a484248f010f">

5. Устанавливаю tflint:

<img width="580" alt="Снимок экрана 2024-08-15 в 21 56 39" src="https://github.com/user-attachments/assets/29df5b57-1886-45a0-a41b-31e42438df6e">

6.Запускаю tflint и получаю результат:

<img width="1145" alt="Снимок экрана 2024-08-15 в 21 58 56" src="https://github.com/user-attachments/assets/1201fa12-c955-44d7-9d6e-5f0efd2e2828">

7.Провожу те же операции на директории с демонстрацией vms и получаю результат:

<img width="1163" alt="Снимок экрана 2024-08-15 в 22 27 39" src="https://github.com/user-attachments/assets/a5fa4114-c946-4c39-9b94-0a9db1d2db94">
<img width="783" alt="Снимок экрана 2024-08-17 в 12 28 18" src="https://github.com/user-attachments/assets/cc58af50-d0e0-442d-86da-b82820a992b8">

8. Описание обнаруженных проблем:



# Задание 2

1. Создаю новую ветку terraform-05 из homework:

<img width="504" alt="Снимок экрана 2024-08-17 в 14 43 07" src="https://github.com/user-attachments/assets/c8464ec2-c341-4d8f-b15c-ab03b5a083e4">
<img width="742" alt="Снимок экрана 2024-08-17 в 14 43 43" src="https://github.com/user-attachments/assets/18e4c444-cb6f-4a4c-a469-da7cc039cf61">

2. Использую материалы из презентации. Создаю новый бакет s3:

<img width="679" alt="Снимок экрана 2024-08-17 в 13 09 49" src="https://github.com/user-attachments/assets/acf05ff9-f957-4dc0-b568-fbf8ae7da614">
<img width="813" alt="Снимок экрана 2024-08-17 в 13 10 24" src="https://github.com/user-attachments/assets/bcee98c9-9d51-4645-9399-3a2ca13869d5">

3. Создаю новую БД YDB:

<img width="693" alt="Снимок экрана 2024-08-17 в 13 12 19" src="https://github.com/user-attachments/assets/4ddbcb7d-7b86-40b5-8c0a-e6fd90f3635c">

4. Копирую эндпоинт:

<img width="810" alt="Снимок экрана 2024-08-17 в 13 50 22" src="https://github.com/user-attachments/assets/1df516fc-ae09-4ec2-a632-cd28caa8a8cc">

5. Создаю новую документную таблицу со строкой LockID

<img width="762" alt="Снимок экрана 2024-08-17 в 15 09 58" src="https://github.com/user-attachments/assets/8843d7c1-4ba6-4778-bd46-25a3c9b2d7a4">

6. Создаю сервисный аккаунт и ключ:

<img width="580" alt="Снимок экрана 2024-08-17 в 14 20 11" src="https://github.com/user-attachments/assets/e9da5c4b-4dd1-478c-8f81-70ca2aa67544">
<img width="1053" alt="Снимок экрана 2024-08-17 в 14 19 55" src="https://github.com/user-attachments/assets/224e1a37-1dba-468e-a570-abb9b5c81cea">

7. Редактирую ACL и права доступа к БД:

<img width="790" alt="Снимок экрана 2024-08-17 в 14 22 43" src="https://github.com/user-attachments/assets/f20e0780-2bd5-4502-b878-f89d22d7a554">
<img width="523" alt="Снимок экрана 2024-08-17 в 14 25 11" src="https://github.com/user-attachments/assets/6d00b5f1-a702-4b43-8059-6ebce0963646">

8. Создаю блок backend s3:

<img width="745" alt="Снимок экрана 2024-08-17 в 15 00 37" src="https://github.com/user-attachments/assets/7823eac7-1ee2-4b75-8adf-c3225b3347f5">

9. Коммичу изменения в ветку terraform-05 и сохраняю стейт в s3 бакете:













