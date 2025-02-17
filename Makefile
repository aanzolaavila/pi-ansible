.PHONY: ping
ping:
	ansible home -m ping -i inventory.yaml

.PHONY: verify
verify:
	ansible-inventory -i inventory.yaml --list

.PHONY: apply
apply:
	ansible-playbook -i inventory.yaml cookbooks/main.yaml

.PHONY: pods
pods:
	ansible-playbook -i inventory.yaml cookbooks/pods.yaml

.PHONY: tailscale
tailscale:
	ansible-playbook -i inventory.yaml cookbooks/tailscale.yaml

.PHONY: resolv
resolv:
	ansible-playbook -i inventory.yaml cookbooks/resolv.yaml
