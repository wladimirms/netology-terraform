## Домашнее задание к модулю "Продвинутые методы работы с Terraform"

# Задание 1

1. Ознакамливаюсь со сторонним модулем и смотрю на пример использования:

<img width="1089" alt="Снимок экрана 2024-08-09 в 18 25 55" src="https://github.com/user-attachments/assets/8e2972a6-b371-4036-85f6-bdbb76f51893">

2. Создаю вызов remote-модуля в main.tf и добавляю необходимые перемменные:

<img width="735" alt="Снимок экрана 2024-08-11 в 14 21 11" src="https://github.com/user-attachments/assets/c13e4d5d-c93e-4a16-8702-b78d7c442d19">
<img width="358" alt="Снимок экрана 2024-08-09 в 18 29 37" src="https://github.com/user-attachments/assets/7c7817cb-2267-4301-bf34-b9c809a57ddf">

3. В файле cloud-init добавляю установку nginx и передаю ssh-ключ в функцию template_file в блоке vars ={}

<img width="389" alt="Снимок экрана 2024-08-09 в 18 36 40" src="https://github.com/user-attachments/assets/469ee491-18ff-436d-b2b5-377f5fdc4603">
<img width="492" alt="Снимок экрана 2024-08-09 в 18 37 33" src="https://github.com/user-attachments/assets/32b67f8c-e70a-48cf-842a-6e0fa34f0808">

4. Устанвливаю удаленный модуль и модуль для template. У меня macОС, поэтому использую стороннего поставщика модуля версии 2.2.0

<img width="276" alt="Снимок экрана 2024-08-09 в 18 51 55" src="https://github.com/user-attachments/assets/08a9fa0f-27d1-450f-8314-6f5a3ae0105e">
<img width="539" alt="Снимок экрана 2024-08-11 в 14 24 51" src="https://github.com/user-attachments/assets/a2937575-2312-49bb-9049-7054e739a5a8">
<img width="317" alt="Снимок экрана 2024-08-11 в 14 25 09" src="https://github.com/user-attachments/assets/672a5913-c14a-4392-a8aa-ba8ec2ceb9d3">

6. Применяю код - скриншоты консоли YC и terraform console:

<img width="789" alt="Снимок экрана 2024-08-11 в 14 38 24" src="https://github.com/user-attachments/assets/5fb71450-93ed-4df8-9a39-c2f0a6a5fbc2">
<img width="821" alt="Снимок экрана 2024-08-11 в 14 38 08" src="https://github.com/user-attachments/assets/866d5446-0dd1-4aea-8f37-9f0161eab41a">
<img width="342" alt="Снимок экрана 2024-08-11 в 14 36 50" src="https://github.com/user-attachments/assets/0aab2283-5c4d-469c-8d9a-89ca04db4aa0">
<img width="356" alt="Снимок экрана 2024-08-11 в 14 36 13" src="https://github.com/user-attachments/assets/3e02b045-316d-4353-9061-ac12b576cd24">


# Задание 2

1. Создаю локальный модуль vpc, который будет создавать 2 ресурса: одну сеть и одну подсеть в зоне:

<img width="471" alt="Снимок экрана 2024-08-09 в 18 52 48" src="https://github.com/user-attachments/assets/fee31663-6c65-4e39-8a6a-92ecbbd686e1">
<img width="168" alt="Снимок экрана 2024-08-09 в 18 52 58" src="https://github.com/user-attachments/assets/848f5e1e-5f09-4fb1-b716-58124a088e47">

2. Передаю в модуль 3 переменные для сети:

<img width="363" alt="Снимок экрана 2024-08-11 в 16 47 41" src="https://github.com/user-attachments/assets/7db35ab7-b4cf-4f6d-a0fa-24826d226792">


2. Создаю outputs с передачей переменных в рут-компонент:

<img width="389" alt="Снимок экрана 2024-08-09 в 18 56 50" src="https://github.com/user-attachments/assets/5e88d829-cd5b-48e8-a32c-5ad0297aa0f3">

3.Скриншот информации из terraform console:

<img width="295" alt="Снимок экрана 2024-08-11 в 16 36 32" src="https://github.com/user-attachments/assets/21945b2d-637b-4ef5-a719-239ef5b961e2">

4.Заменяю настройки сети модулем vpc:

<img width="785" alt="Снимок экрана 2024-08-11 в 16 45 27" src="https://github.com/user-attachments/assets/ef2f2ef7-0683-487a-bf65-70dfb5b63f16">

5. Добавляю через -upgrade новый модуль vpc:

<img width="682" alt="Снимок экрана 2024-08-11 в 15 10 06" src="https://github.com/user-attachments/assets/9453c90e-6bff-4869-b8c3-cee812591426">

6. Устанавливаю terraform docs через brew:

<img width="675" alt="Снимок экрана 2024-08-11 в 16 53 51" src="https://github.com/user-attachments/assets/d6f0b50a-8b44-47c9-89d8-d648f3b7abe2">

7. Создаю документацию через terraform docs: 

<img width="1020" alt="Снимок экрана 2024-08-11 в 16 54 56" src="https://github.com/user-attachments/assets/b6367bc6-d184-4247-8889-993bbf1fdaeb">

# Задание 3

1.
