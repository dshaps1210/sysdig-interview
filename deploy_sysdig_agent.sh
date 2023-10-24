helm repo add sysdig https://charts.sysdig.com
helm repo update
helm upgrade -i sysdig-agent --namespace sysdig-agent --create-namespace \
--set global.sysdig.accessKey=8fd8e710-01fc-4b42-8454-d1a9f527a091 \
--set global.sysdig.region=us4 \
--set nodeAnalyzer.secure.vulnerabilityManagement.newEngineOnly=true \
--set global.kspm.deploy=true \
--set nodeAnalyzer.nodeAnalyzer.benchmarkRunner.deploy=false \
--set nodeAnalyzer.nodeAnalyzer.hostScanner.deploy=true \
--set global.clusterConfig.name=sysdig-standard-cluster-1 \
sysdig/sysdig-deploy