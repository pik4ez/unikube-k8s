deploy:
	kubectl apply -f "$(shell pwd)"

clean:
	kubectl del deployment unikube

db:
	psql -h $(shell minikube ip) -p 31893 -U postgres

db_init:
	psql -h $(shell minikube ip) -p 31893 -U postgres < db-init.sql

db_clean:
	psql -h $(shell minikube ip) -p 31893 -U postgres < db-clean.sql
