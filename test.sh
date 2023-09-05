#!/bin/bash

export OTEL_EXPORTER_OTEL_ENDPOINT="http://localhost:4318"
export OTEL_SH_LIB_PATH="./library"
export OTEL_SERVICE_NAME="test-service"

# Import functions
. ./library/otel_traces.sh


# Functions
sleep_for() {
  local sec=$1

  log_info "Sleeping for ${sec} sec..."
  sleep $sec
}

# Start a parent span
# otel_trace_start_parent_span sleep_for 1
# Start a child span, associated to the parent
otel_trace_start_child_span sleep_for 2

otel_trace_start_child_span sleep_for 3
