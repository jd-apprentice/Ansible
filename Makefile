docker:
	ansible-playbook ansible/playbook-docker.yml

nginx:
	ansible-playbook ansible/playbook-nginx.yml

structure:
	ansible-playbook ansible/playbook-structure.yml