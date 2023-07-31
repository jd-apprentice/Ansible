docker:
	ansible-playbook ansible/playbook-docker.yml

nginx:
	ansible-playbook ansible/playbook-nginx.yml

structure:
	ansible-playbook ansible/playbook-structure.yml

grafana:
	ansible-playbook ansible/playbook-grafana.yml

windows:
	ansible-playbook ansible/playbook-windows.yml -i ansible/inventory

ping:
	ansible-playbook ansible/playbook-wing_ping.yml -i ansible/inventory