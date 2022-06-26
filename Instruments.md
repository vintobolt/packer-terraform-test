## Google Cloud Engine

## Packer
Инструмент для сборки образов операционных систем. Packer берет образ операционной системы и с помощью provisioner.
В роли provisioner может выступать Ansible, SHELL или любые кастомные. Далее он запаковывает образ с изменениями в новый образ.
- **packer-templates/template.json**
  Тут две ключевые секции:  **builders** и **provisioners**.
  * **builders** - в этом блоке объясняем с помощью каких ресурсов мы будем собирать образ (Ведь для создания образа, ему нужно где-то запустить исходный, потом с ним что-то сделать, а потом запаковать обратно в образ версии 2 например)
  * **provisioners** - они нужны для того чтобы сделать изменения в исходном образе. И в итоге получить конечный образ
- **packer-templates/vars.json**
  Тут переменные которые шаблонизатор впихнёт в Template
- **accounts.json** - файлик сгенерированный из админки GCE для пользователя account-for-packer

## Terraform
1. Создать учетку c правами 
    - **Storage Admin**
    - **Compute Admin**
    - **Compute Image User**
2. Добавить переменную окружения для creds которые мы создали для юзера
   >export GOOGLE_APPLICATION_CREDENTIALS=/Users/vintobolt/Projects/devops-lessons/dive-into/tf/terraform-creds.json
3. При создании проекта Terraform нужно выполнить
   >terraform init

   Произведется проверка и создатся пустой **state** в **storage bucket** который мы создали
4. Перед запуском лучше всего выполнить 
    >terraform plan

    Вывод команды покажет что собирается сделать (какие ресурсы будут созданы, удалены или изменены).
    >terraform apply

    Собственно применяет конфигурацию.
## Ansible
У нас тут один файлик с установкой nginx и docker-ce. Особо нечего писать тут.
