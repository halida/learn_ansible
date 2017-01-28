ANSIBLE=ansible --inv config/inv.ini

test:
	$(ANSIBLE) app -m ping

app:
	ansible-playbook -v --inv config/inv.ini playbooks/app.yml
cp:
	ansible --inv config/inv.ini -u root app -m copy -a "src=myfiles/app.conf dest=/etc/nginx/sites-available/app.conf"
