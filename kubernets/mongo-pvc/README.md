STEP 1: create a mongo-pvc refer to the files
apply it
`kubectl apply -f mongo-pvc.yaml`

STEP 2: Create a mongo-deployment.yaml file (Deployment) to use the PVC
apply it
`kubectl apply -f mongo-deployment.yaml`

STEP 3 : Expose the mongoDB with a service ; this lets other POds(like client) to connect to MongoDB
refer to mongo-service.yaml

apply it

STEP 4: Test it
kubectl run mongo-client --rm -it --image=mongo -- bash
inside the client pod
mongosh mongodb://mongo-service:27107

then addd data
