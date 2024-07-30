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

1.Создаю vms_platform.tf, переношу туда переменные первой и второй ВМ с префиксами vm_web и vm_db. Добавляю ресурсы для новой машины:

<img width="557" alt="Снимок экрана 2024-07-29 в 21 55 17" src="https://github.com/user-attachments/assets/8649534b-7d30-4ef5-a934-d281709083df">

2.Создаю вторую машину в другой зоне (ru-central1-b) и переменные к ней. Применяю изменения. Изменяется первая ВМ и создается новая:

<img width="502" alt="Снимок экрана 2024-07-29 в 21 58 33" src="https://github.com/user-attachments/assets/930f7eda-7d66-4649-8f6a-afbdcc766912">

Консоль YC c двумя ВМ в разных зонах и разных подсетях:

<img width="958" alt="Снимок экрана 2024-07-09 в 22 10 24" src="https://github.com/user-attachments/assets/508904b2-4302-4e68-bade-b68e18f216a4">

# Задание 4

1.Создаю outputs.tf и создаю в нем output c информацией по ВМ с массивом из 1 значениея с двумя объектами:

<img width="1114" alt="Снимок экрана 2024-07-29 в 22 38 58" src="https://github.com/user-attachments/assets/b7922d5d-3043-4c2c-bf28-8444e80e2192">

2. Использую terraform refresh для получения outputs:

<img width="754" alt="Снимок экрана 2024-07-29 в 22 40 51" src="https://github.com/user-attachments/assets/c67e6fe4-76f0-4e4a-bb4f-07ed7aa2c4e9">

Значения по каждой машине отображаются в одном output

# Задание 5

1.Создаю одну locals переменную locals.tf по примеру из лекции для двух ВМ: 

<img width="687" alt="Снимок экрана 2024-07-30 в 21 17 33" src="https://github.com/user-attachments/assets/0e8ab0c3-716d-4266-9e05-3eb0432e743a">

2.Добавляю новые переменные env, platform и role в vms_platform.tf

<img width="302" alt="Снимок экрана 2024-07-30 в 21 19 04" src="https://github.com/user-attachments/assets/74da0e78-8ba2-4c96-9b1a-4fa9ab5b8928">

3. Изменяю ресурсы ВМ с переменной local:

<img width="1124" alt="Снимок экрана 2024-07-30 в 21 22 15" src="https://github.com/user-attachments/assets/f79bb3e8-5fe1-4297-953b-8518d14ca234">

4. Применяю изменения. Terraform plan изменился в соответствии с новыми значениями переменных:

<img width="961" alt="Снимок экрана 2024-07-30 в 21 24 06" src="https://github.com/user-attachments/assets/bdb447de-59cb-45f8-af07-a6dba5dc4ccf">

# Задание 6

1. Создаю переменную vms_resources с типом map(object). Все ненужные переменные не комментирую, а удаляю.

<img width="378" alt="Снимок экрана 2024-07-30 в 21 59 53" src="https://github.com/user-attachments/assets/dede1a49-d894-4288-a634-77b71ab945b7">

2.Создаю новую переменную metadata

<img width="506" alt="Снимок экрана 2024-07-30 в 22 28 13" src="https://github.com/user-attachments/assets/2f8b04bb-8d5b-45f5-90a9-3ec3fa726471">

2. Применяю новые пути переменных в main.tf

<img width="1150" alt="Снимок экрана 2024-07-30 в 22 03 00" src="https://github.com/user-attachments/assets/4694d7ea-5e2c-4336-94eb-cbdbe8d6abcd">

<img width="1165" alt="Снимок экрана 2024-07-30 в 22 33 16" src="https://github.com/user-attachments/assets/95a60e97-0beb-4ce2-95e0-21b2ebccefdd">

3.Запускаю terraform plan. Никаких изменений нет, кроме памяти для ВМ c БД - меняется с 2х на 4Гб, так как раньше я установил значение 2 и создавал машины с этим старым параметром.

<img width="916" alt="Снимок экрана 2024-07-30 в 22 04 31" src="https://github.com/user-attachments/assets/670022d7-43d8-47f3-9392-6c586b9ee3bd">





