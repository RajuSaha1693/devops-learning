## secret creation command

kubectl create secret generic db-secret \
 --from-literal=DB_USER=admin \
 --from-literal=DB_PASSWORD=pass123

---

get info

kubectl exec -it deploy/node-app -- env
