setup:
	ansible-galaxy install -r requirements.yml
	ansible-playbook setup.yml -i inventory.ini --vault-password-file vault-password-file

deploy:
	ansible-playbook playbook.yml -i inventory.ini --vault-password-file vault-password-file
	ansible-playbook ssl.yml -i inventory.ini --vault-password-file vault-password-file

edit-vault:
	ansible-vault edit --vault-password-file vault-password-file group_vars/webservers/vault.yml
