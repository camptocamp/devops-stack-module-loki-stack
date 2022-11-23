locals {
  helm_values = [{

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
