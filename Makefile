setup:
	ansible-galaxy install -r requirements.yml
	ansible-playbook setup.yml -i inventory.ini -vvv
