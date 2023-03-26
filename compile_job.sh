#!/bin/bash

python -m beam_example_wc \
    --runner=SparkRunner \
    --output_executable_path=./wc_job.jar \
    --environment_type=PROCESS \
    --environment_config='{\"command\": \"/opt/apache/beam/boot\"}' \
    --spark_version=3
