kubectl create -f sonar-pv-postgres.yaml -n sonar   
kubectl create -f sonar-pvc-postgres.yaml  -n sonar
kubectl create -f sonar-postgres-deployment.yaml  -n sonar
kubectl create -f sonarqube-deployment.yaml -n sonar
kubectl create -f sonarqube-service.yaml -n sonar
kubectl create -f sonar-postgres-service.yaml -n sonar
