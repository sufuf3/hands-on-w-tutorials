# Metrics Server

[Metrics Server](https://github.com/kubernetes-incubator/metrics-server) exposes
core Kubernetes metrics via metrics API.

More details can be found in [Core metrics pipeline documentation](https://kubernetes.io/docs/tasks/debug-application-cluster/core-metrics-pipeline/).

## Troubleshooting

Metrics Server supports up to 30 pods per cluster node. In clusters where there are more running pods, Metrics Server may be throttled or fail with OOM error. Starting with Kubernetes 1.9.2, Metrics Server resource requirements may be overwritten manually. [Learn more about Addon Resizer configuration](https://github.com/kubernetes/autoscaler/tree/master/addon-resizer#addon-resizer-configuration)

### Important notices

Decreasing resource requirements for cluster addons may cause system instability. The effects may include (but are not limited to):
  - Horizontal Pod Autoscaler not working
  - `kubectl top` not working (starting with Kubernetes 1.10)

Overwritten configuration persists through cluster updates, therefore may cause all effects above after a cluster update.

[![Analytics](https://kubernetes-site.appspot.com/UA-36037335-10/GitHub/cluster/addons/cluster-monitoring/README.md?pixel)]()

### Setup steps
#### Useful link

http://blog.51cto.com/newfly/2294112

#### Steps
```
git clone https://github.com/kubernetes-incubator/metrics-server.git
git checkout v0.3.1
cp -r deploy/1.8+ ~/hands-on-w-tutorials/2018-12-06_07/metrics-server
```
modify `metrics-server-deployment.yaml`
