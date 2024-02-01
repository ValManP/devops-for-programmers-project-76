setup:
	ansible-galaxy install -r requirements.yml
	ansible-playbook setup.yml -i inventory.ini

deploy:
	ansible-playbook deploy.yml -i inventory.ini
