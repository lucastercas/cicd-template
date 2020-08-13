.PHONY: ansible

ansible:
	@docker run --rm -it \
		-v $(CURDIR)/roles:/etc/ansible/roles \
		williamyeh/ansible:alpine3 $(cmd)

run_playbook:
	# docker run --rm -it \
	# 	-v $(CURDIR):/etc/ansible \
	# 	-w /etc/ansible \
	# 	williamyeh/ansible:alpine3 \
	# 	ansible-playbook -i hosts site.yml -vvv
	ansible-playbook -i hosts site.yml -vvv

create_role:
	@docker run --rm -it \
		-v $(CURDIR)/roles:/etc/ansible/roles \
		williamyeh/ansible:alpine3 \
		ansible-galaxy init $(role) --init-path=/etc/ansible/roles