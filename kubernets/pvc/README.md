## Why Volumes & Persistent Storage Matter

Problem: BY default , data inside a Pod is temporary. If the Pod restart, all the data is lost.

Solution: Kubernetes provides Volume and PersistentVolumeClaim(PVCs) to keep the data safe across Pod restart

Analogy: Think of Pods as Laptops: If you save files only in RAM, they vanish when you reboot. Volumes are like plugging in a USB drive - your files survive a restart

STEP1: Create a PVC (PersistentVolumeClaim)
Its an request for storage. In killercoda local-path StorageCalss is usually avialable we will use this : refer to pvc.yaml file

After file is created apply it
`kubectl apply -f pvc.yaml`
verify using below cmd
`kubectl get pvc`

--Status will show pending untill any pod is using it

STEP2: Create a Pod that uses the PVC
refer to pod.yaml file

after creating apply it
`kubectl apply -f pod.yaml`
check the pod
`kubectl get pods`

Now check again the PVC it will shows as Bound
`kubectl get pvc`

STEP3 : Lets write some data into the POD
`kubectl exec -it demo-pod -- sh`
inside the pod write the below
echo "Hello K8s" > /data/hello.txt
cat /data/hello.txt

then exit use `exit`

now delete the POD
kubectl delete pod demo-pod

again recreate it
kubectl apply -f pod.yaml

check the data using below cmd
`kubectl exec -it demo-pod -- cat /data/hello.txt`

---

Volumes give Pods a place to store data.

PVCs are requests for storage; they bind to PVs (actual storage).

With local-path in Killercoda, PVCs wait until a Pod consumes them.

Persistent storage ensures your data survives Pod restarts or rescheduling.
