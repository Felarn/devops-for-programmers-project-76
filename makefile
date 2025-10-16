install-ansible-roles:
	ansible-galaxy install -r requirements.yml

copy-templates:
	cp templates/inventory-template.ini inventory.ini

setup:
	ansible-playbook -i inventory.ini playbook.yml --tags setup

redmine:
	ansible-playbook -i inventory.ini playbook.yml --tags redmine

deploy:
	ansible-playbook -i inventory.ini playbook.yml 