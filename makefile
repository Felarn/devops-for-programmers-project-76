install-ansible-roles:
	ansible-galaxy install -r requirements.yml

copy-templates:
	cp templates/inventory-template.ini inventory.ini