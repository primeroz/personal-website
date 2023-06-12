.PHONY: server
server:
	hugo -D server --renderStaticToDisk

.PHONY: server-prod
server-prod:
	hugo server --renderStaticToDisk

.PHONY: deploy
deploy:
	flyctl deploy

.PHONY: initialize
initialize:
	git pull
	git submodule update --init

#content/homelab/cover.png: rack.diag
#    rackdiag rack.diag -o $@ 
