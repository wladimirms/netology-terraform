## Домашнее задание к модулю "Продвинутые методы работы с Terraform"

# Задание 1

1. Ознакамливаюсь со сторонним модулем и смотрю на пример использования:

<img width="1089" alt="Снимок экрана 2024-08-09 в 18 25 55" src="https://github.com/user-attachments/assets/8e2972a6-b371-4036-85f6-bdbb76f51893">

2. Создаю вызов remote-модуля в main.tf и добавляю необходимые перемменные:

<img width="732" alt="Снимок экрана 2024-08-09 в 18 28 02" src="https://github.com/user-attachments/assets/8d119d9e-7c54-4fd1-983a-9c788bf955c5">
<img width="358" alt="Снимок экрана 2024-08-09 в 18 29 37" src="https://github.com/user-attachments/assets/7c7817cb-2267-4301-bf34-b9c809a57ddf">

3. В файле cloud-init добавляю установку nginx и передаю ssh-ключ в функцию template_file в блоке vars ={}

<img width="389" alt="Снимок экрана 2024-08-09 в 18 36 40" src="https://github.com/user-attachments/assets/469ee491-18ff-436d-b2b5-377f5fdc4603">
<img width="492" alt="Снимок экрана 2024-08-09 в 18 37 33" src="https://github.com/user-attachments/assets/32b67f8c-e70a-48cf-842a-6e0fa34f0808">

4. Устанвливаю удаленный модуль и модуль для template

<img width="276" alt="Снимок экрана 2024-08-09 в 18 51 55" src="https://github.com/user-attachments/assets/08a9fa0f-27d1-450f-8314-6f5a3ae0105e">

6. 

# Задание 2

1. Создаю локальный модуль vpc, который будет создавать 2 ресурса: одну сеть и одну подсеть в зоне:

<img width="471" alt="Снимок экрана 2024-08-09 в 18 52 48" src="https://github.com/user-attachments/assets/fee31663-6c65-4e39-8a6a-92ecbbd686e1">
<img width="168" alt="Снимок экрана 2024-08-09 в 18 52 58" src="https://github.com/user-attachments/assets/848f5e1e-5f09-4fb1-b716-58124a088e47">

2. Передаю в модуль 3 переменные для сети:

<img width="399" alt="Снимок экрана 2024-08-09 в 18 55 29" src="https://github.com/user-attachments/assets/9fa70d57-5368-48ad-a996-177233a16e75">

2. Создаю outputs с передачей переменных в рут-компонент:

<img width="389" alt="Снимок экрана 2024-08-09 в 18 56 50" src="https://github.com/user-attachments/assets/5e88d829-cd5b-48e8-a32c-5ad0297aa0f3">

3.

