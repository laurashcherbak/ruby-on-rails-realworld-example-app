require 'prometheus_exporter/middleware'

PrometheusExporter::Instrumentation::Middleware.configure do |config|
  config.collectors = [
    PrometheusExporter::Middleware::Collector
  ]
  config[:in_cluster] = true
end

Rails.application.middleware.unshift PrometheusExporter::Middleware
