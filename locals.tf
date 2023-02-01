locals {
  fullnameOverride = "loki"

  helm_values = [var.distributed_mode ? {
    datasourceURL = "http://${local.fullnameOverride}-query-frontend.${var.namespace}:3100"
    loki-distributed = {
      fullnameOverride = local.fullnameOverride
      compactor = {
        enabled = true
        persistence = {
          enabled = true
        }
      }
      gateway = {
        enabled = false
      }
      indexGateway = {
        enabled = true
        persistence = {
          enabled = true
        }
      }
      ingester = {
        persistence = {
          enabled = true
          size    = "10Gi"
        }
        replicas = 1
      }
      loki = {
        structuredConfig = {
          ruler = {
            alertmanager_url = "http://kube-prometheus-stack-alertmanager.kube-prometheus-stack:9093"
          }
          chunk_store_config = {
            chunk_cache_config = {
              enable_fifocache = false
              memcached = {
                expiration = "24h"
              }
              memcached_client = {
                host    = "${local.fullnameOverride}-memcached-chunks.${var.namespace}.svc.cluster.local"
                service = "http"
                timeout = "500ms"
              }
            }
          }
          compactor = {
            retention_delete_delay = "1h"
            retention_enabled      = false
          }
          ingester = {
            wal = {
              replay_memory_ceiling = "500MB"
            }
          }
          limits_config = {
            ingestion_rate_mb           = 10
            max_chunks_per_query        = 0
            max_entries_limit_per_query = 0
            max_query_length            = "9000h"
            max_query_parallelism       = 6
            per_stream_rate_limit       = "10MB"
            retention_period            = "9000h"
          }
          querier = {
            max_concurrent = 2
            query_timeout  = "5m"
          }
          query_range = {
            cache_results                 = true
            max_retries                   = 50
            parallelise_shardable_queries = false
            results_cache = {
              cache = {
                enable_fifocache = false
                memcached = {
                  expiration = "24h"
                }
                memcached_client = {
                  host    = "${local.fullnameOverride}-memcached-frontend.${var.namespace}.svc.cluster.local"
                  service = "http"
                  timeout = "500ms"
                }
              }
            }
          }
          server = {
            grpc_server_max_recv_msg_size = 33554432
            grpc_server_max_send_msg_size = 33554432
            http_server_read_timeout      = "180s"
            http_server_write_timeout     = "180s"
          }
          storage_config = {
            boltdb_shipper = {
              index_gateway_client = {
                log_gateway_requests = true
              }
            }
            index_queries_cache_config = {
              enable_fifocache = false
              memcached = {
                expiration = "24h"
              }
              memcached_client = {
                host    = "${local.fullnameOverride}-memcached-index-queries.${var.namespace}.svc.cluster.local"
                service = "http"
                timeout = "500ms"
              }
            }
          }
        }
      }
      memcachedChunks = {
        enabled = true
      }
      memcachedFrontend = {
        enabled = true
      }
      memcachedIndexQueries = {
        enabled = true
      }
      querier = {
        affinity = ""
        replicas = 4
      }
      ruler = {
        directories = {}
        enabled     = false
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
}
