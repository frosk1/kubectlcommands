### DELETE
#kubectl get pods --all-namespaces --field-selector=status.phase!=Running
#kubectl get pods | grep Error
#kubectl get pods | grep Error | awk '{print $1}'

#kubectl get jobs | grep 0/1 | awk '{print $1}' | xargs kubectl delete job


#kubectl get pods | grep Error | awk '{print $1}' | xargs kubectl delete pod
#kubectl get pods | grep ImagePullBackOff | awk '{print $1}' | xargs kubectl delete pod
#kubectl get pods | grep ErrImagePull | awk '{print $1}' | xargs kubectl delete pod

#kubectl get pods | grep broker | awk '{print $1}' | xargs kubectl delete pod
#kubectl get jobs | awk '{print $1}' | xargs kubectl delete job
#kubectl get all | grep broker | grep job.batch | awk '{print $1}' | xargs kubectl delete


#kubectl delete -n default tzcronjobs.cronjobber.hidde.co strat-test-trade-all
#kubectl get tzcronjobs.cronjobber.hidde.co | awk '{print $1}' | xargs kubectl delete tzcronjobs.cronjobber.hidde.co


#kubectl get replicaset
#kubectl get replicaset | awk -F ' '  ' $3=="0" {print; }' | xargs kubectl delete replicaset



##### Get tzcronjobs
kubectl get tzcronjobs.cronjobber.hidde.co

## get only scheduled tz cronjobs at the moment
#kubectl get tzcronjobs.cronjobber.hidde.co | awk -F ' '  '{ if ($7) print; }'



### check if role for cronjob jobs is binded to default service account
#kubectl auth can-i create tzcronjobs --as=system:serviceaccount:default:default -n default
