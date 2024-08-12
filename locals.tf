locals {
  fullnameOverride = "loki"

  helm_values = [{
    eventHandler = {
      namespace       = "loki-stack"
      lokiURL         = "http://${local.fullnameOverride}-distributor.loki-stack:3100/loki/api/v1/push"
      labels          = {}
      grafanaAgentTag = "main-4f86002"
      affinity        = {}
    }

    # TODO Reevaluate the need for having an ingress for Loki, as nobody seems to be using it.
    frontendIngress = var.ingress != null ? {
      lokiCredentials = base64encode("loki:${htpasswd_password.loki_password_hash.0.bcrypt}")
      hosts           = var.ingress.hosts
      clusterIssuer   = var.ingress.cluster_issuer
      allowedIPs      = var.ingress.allowed_ips
      serviceName     = "${local.fullnameOverride}-query-frontend"
    } : null

    # Value to configure the Loki datasource in Grafana.
    datasourceURL = "http://${local.fullnameOverride}-query-frontend.loki-stack:3100"

    loki-distributed = {
      fullnameOverride = local.fullnameOverride
      compactor = {
        enabled = true
        persistence = {
          enabled = true
        }
        resources = {
          requests = { for k, v in var.resources.compactor.requests : k => v if v != null }
          limits   = { for k, v in var.resources.compactor.limits : k => v if v != null }
        }
      }
      distributor = {
        resources = {
          requests = { for k, v in var.resources.distributor.requests : k => v if v != null }
          limits   = { for k, v in var.resources.distributor.limits : k => v if v != null }
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
        resources = {
          requests = { for k, v in var.resources.index_gateway.requests : k => v if v != null }
          limits   = { for k, v in var.resources.index_gateway.limits : k => v if v != null }
        }
      }
      ingester = {
        persistence = {
          enabled = true
        }
        replicas       = 3
        maxUnavailable = 1
        affinity       = ""
        resources = {
          requests = { for k, v in var.resources.ingester.requests : k => v if v != null }
          limits   = { for k, v in var.resources.ingester.limits : k => v if v != null }
        }
      }
      loki = {
        structuredConfig = {
          common = {
            compactor_address = "http://${local.fullnameOverride}-compactor:3100"
          }
          ruler = {
            alertmanager_url = "http://kube-prometheus-stack-alertmanager.kube-prometheus-stack:9093"
          }
          chunk_store_config = {
            chunk_cache_config = {
              memcached = {
                expiration = "24h"
              }
              memcached_client = {
                service = "memcached-client"
                timeout = "500ms"
              }
            }
          }
          compactor = {
            retention_enabled = true
          }
          ingester = {
            lifecycler = {
              ring = {
                replication_factor = 3
              }
            }
            wal = {
              replay_memory_ceiling = "500MB"
              flush_on_shutdown     = true
            }
          }
          limits_config = {
            ingestion_rate_mb           = 10
            max_chunks_per_query        = 0
            max_entries_limit_per_query = 0
            max_query_length            = var.retention
            max_query_parallelism       = 6
            per_stream_rate_limit       = "10MB"
            retention_period            = var.retention
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
                memcached = {
                  expiration = "24h"
                }
                memcached_client = {
                  service = "memcached-client"
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
              memcached = {
                expiration = "24h"
              }
              memcached_client = {
                service = "memcached-client"
                timeout = "500ms"
              }
            }
          }
        }
      }
      memcachedChunks = {
        enabled = true
        resources = {
          requests = { for k, v in var.resources.memcached_chunks.requests : k => v if v != null }
          limits   = { for k, v in var.resources.memcached_chunks.limits : k => v if v != null }
        }
      }
      memcachedFrontend = {
        enabled = true
        resources = {
          requests = { for k, v in var.resources.memcached_frontend.requests : k => v if v != null }
          limits   = { for k, v in var.resources.memcached_frontend.limits : k => v if v != null }
        }
      }
      memcachedIndexQueries = {
        enabled = true
        resources = {
          requests = { for k, v in var.resources.memcached_index_queries.requests : k => v if v != null }
          limits   = { for k, v in var.resources.memcached_index_queries.limits : k => v if v != null }
        }
      }
      memcachedIndexWrites = {
        enabled = true
        resources = {
          requests = { for k, v in var.resources.memcached_index_writes.requests : k => v if v != null }
          limits   = { for k, v in var.resources.memcached_index_writes.limits : k => v if v != null }
        }
      }
      queryScheduler = {
        enabled  = true
        affinity = ""
        resources = {
          requests = { for k, v in var.resources.query_scheduler.requests : k => v if v != null }
          limits   = { for k, v in var.resources.query_scheduler.limits : k => v if v != null }
        }
      }
      querier = {
        replicas       = 4
        maxUnavailable = 2
        affinity       = ""
        resources = {
          requests = { for k, v in var.resources.querier.requests : k => v if v != null }
          limits   = { for k, v in var.resources.querier.limits : k => v if v != null }
        }
      }
      ruler = {
        directories = {}
        enabled     = false
      }
    }

    promtail = {
      resources = {
        requests = { for k, v in var.resources.promtail.requests : k => v if v != null }
        limits   = { for k, v in var.resources.promtail.limits : k => v if v != null }
      }
      tolerations = [
        {
          operator = "Exists"
          effect   = "NoSchedule"
        }
      ]
      config = {
        clients = [{
          url = "http://${local.fullnameOverride}-distributor.loki-stack:3100/loki/api/v1/push"
        }]
      }
    }

    alloy = {
      resources = {
        requests = { for k, v in var.resources.promtail.requests : k => v if v != null }
        limits   = { for k, v in var.resources.promtail.limits : k => v if v != null }
      }
      controller = {
        tolerations = [
          {
            operator = "Exists"
            effect   = "NoSchedule"
          }
        ]
      }
  }]
}
