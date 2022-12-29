locals {
  helm_values = [var.distributed_mode ? {
    datasourceURL = "http://${local.fullnameOverride}-query-frontend.${var.namespace}:3100"
    loki-distributed = {
      fullnameOverride = local.fullnameOverride
      loki = {
        structuredConfig = {
          chunk_store_config = {
            chunk_cache_config = {
              memcached_client = {
                host = "${local.fullnameOverride}-memcached-chunks.${var.namespace}.svc.cluster.local"
              }
            }
          }
          storage_config = {
            index_queries_cache_config = {
              memcached_client = {
                host = "${local.fullnameOverride}-memcached-index-queries.${var.namespace}.svc.cluster.local"
              }
            }
          }
          query_range = {
            results_cache = {
              cache = {
                memcached_client = {
                  host = "${local.fullnameOverride}-memcached-frontend.${var.namespace}.svc.cluster.local"
                }
              }
            }
          }
          ruler = {
            # TODO should the next url be set as variable since KPS namespace can change
            alertmanager_url = "http://kube-prometheus-stack-alertmanager.kube-prometheus-stack:9093"
          }
        }
      }
    }
    promtail = {
      config = {
        clients = [{
          url = "http://${local.fullnameOverride}-distributor.${var.namespace}:3100/loki/api/v1/push"
        }]
      }
    }
    } : null, var.distributed_mode ? null : {
    loki-stack = {
      loki = {
        serviceName = "loki-stack.loki-stack"
        serviceMonitor = {
          enabled = true
        }
      }
      promtail = {
        serviceMonitor = {
          enabled = true
        }
        # TODO check next block's indentation
        filebeat = {
          extraContainers = <<-EOT
          - name: filebeat-prometheus-exporter
            image: "trustpilot/beat-exporter:0.4.0"
            ports:
            - containerPort: 9479
              protocol: TCP
              name: metrics
        EOT
        }
      }
    }
  }]

  fullnameOverride = "loki"
}
