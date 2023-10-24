kubectl create ns sysdig-agent

helm upgrade -i sysdig-agent \
--set sysdig.accessKey=8fd8e710-01fc-4b42-8454-d1a9f527a091 \
--set sysdig.settings.collector=ingest.us4.sysdig.com \
--set sysdig.settings.collector_port=6443 \
--set clusterName=autopilot-lugo sysdig/sysdig \
--set nodeAnalyzer.deploy=false \
--set daemonset.affinity=null \
--set ebpf.enabled=true \
--set ebpf.settings.mountEtcVolume=false \
--set-string daemonset.annotations."autopilot\.gke\.io/no-connect"=true