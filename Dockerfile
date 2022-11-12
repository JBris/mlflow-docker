ARG CONDA_TAG

FROM continuumio/miniconda3:${CONDA_TAG}

RUN mkdir -p /mlflow/mlruns

WORKDIR /mlflow

ARG MLFLOW_LABEL
ARG PSYCOPG_LABEL
ARG BOTO3_LABEL

RUN conda install -c conda-forge psycopg2=${PSYCOPG_LABEL} mlflow=${MLFLOW_LABEL} boto3=${BOTO3_LABEL} -y --quiet
