# config/initializers/prometheus.rb

require 'prometheus_exporter/middleware'

# Enable the metrics endpoint for Prometheus
Rails.application.middleware.unshift PrometheusExporter::Middleware
