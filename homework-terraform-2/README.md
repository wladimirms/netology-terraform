## Домашнее задание к модулю "Основы работы с Terraform"

# Задание 1

1.Создаю сервисный аккаунт и ключ.

<img width="755" alt="Снимок экрана 2024-07-28 в 18 53 30" src="https://github.com/user-attachments/assets/e81c0a03-8853-4524-88f2-40b613a2bf30">

<img width="740" alt="Снимок экрана 2024-07-28 в 18 55 36" src="https://github.com/user-attachments/assets/461064dc-39cf-4a65-923d-9ded920a431d">

2.Файл с ключом перемещаю в домашнюю директорию

<img width="1309" alt="Снимок экрана 2024-07-28 в 19 00 14" src="https://github.com/user-attachments/assets/0bfdeb3f-3f3e-4a8c-94cc-32d419bbf5e0">

3. Создаю ВМ и правлю ошибки в tf конфиге. Использую следующие характеристики инстанса:

<img width="442" alt="Снимок экрана 2024-07-28 в 20 36 12" src="https://github.com/user-attachments/assets/1a2e36c6-1c04-4604-8c66-12db9ce45543">

ВМ успешно создалась

<img width="799" alt="Снимок экрана 2024-07-28 в 20 36 53" src="https://github.com/user-attachments/assets/f7f6a27e-54f7-4560-8406-348dde020e56">

4. Захожу на ВМ и запускаю curl + скриншот ресурса из YC

<img width="899" alt="Снимок экрана 2024-07-28 в 20 28 18" src="https://github.com/user-attachments/assets/395c62a3-032c-481c-b3cd-3eaacb58a81a">

<img width="782" alt="Снимок экрана 2024-07-28 в 20 20 59" src="https://github.com/user-attachments/assets/efd63cc0-e84b-4ff8-b57f-d61d2ea04483">

5.
   - preemptible = true - этот параметр позволяет сделать ВМ прерываемой в политике scheduling_policy, что поможет экономить ресурсы;
   - core_fraction=5 - этот параметр задает уровень производительности. Означает количесвто времени доступа к физичекому ядру на железном
     сервере. УП меньше 100% предназначен для запуска приложений, не требующих высокой производительности и не чувствительных к задержкам.
     Такие машины обойдутся дешевле. 

# Задание 2

1. Произвожу замену хардкода на переменные с префиксом и объявляю их в variables.tf

<img width="955" alt="Снимок экрана 2024-07-28 в 21 10 11" src="https://github.com/user-attachments/assets/d832d2d5-0c4c-4bc4-9b56-045c8f5ba606">

2. Использую terraform validate и plan. Результат положительный.

<img width="711" alt="Снимок экрана 2024-07-28 в 21 14 11" src="https://github.com/user-attachments/assets/c5ee4278-88b8-438f-bb0f-17e27db78544">
<img width="746" alt="Снимок экрана 2024-07-28 в 21 14 28" src="https://github.com/user-attachments/assets/44163dc6-a718-4216-8a4b-2cea15689bdc">

# Задание 3



