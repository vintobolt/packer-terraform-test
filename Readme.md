## Заметки
>Задача: Виртуальная машина с debian 10 buster с обновленными пакетами, установленным nginx, что бы не устанавливать его каждый раз, docker-ce.

#### Маленький алгоритм
1. Создать template.json и vars.json.
2. В качестве provisioner используем ansible - значит пишем плейбук.
3. Создаем учетку для packer GCE и выдаем права **Compute Instance Admin** и **Service Account User**. 
4. Создаем ключ в формате json и кладем себе в проект.
5. Проверяем корректность командой 
   >packer validate -var-file=packer-templates/vars.json packer-templates/template.json
6. Запускаем сборку
   >packer build -var-file=packer-templates/vars.json packer-templates/template.json