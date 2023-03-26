#!/bin/bash

spark-submit --master k8s://https://127.0.0.1:60632 \
  --conf spark.kubernetes.driver.podTemplateFile=driver_pod_template.yaml \
  --conf spark.kubernetes.executor.podTemplateFile=executor_pod_template.yaml \
  --class org.apache.beam.runners.spark.SparkPipelineRunner \
  --conf spark.kubernetes.container.image=apache/spark:v3.3.2 \
  ./wc_job.jar