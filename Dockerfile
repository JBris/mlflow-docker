ARG CONDA_TAG

FROM continuumio/miniconda3:${CONDA_TAG}

RUN mkdir -p /mlflow/mlruns

WORKDIR /mlflow

ARG MLFLOW_LABEL
ARG PSYCOPG_LABEL

RUN conda install -c conda-forge psycopg2=${PSYCOPG_LABEL} mlflow=${MLFLOW_LABEL} -y --quiet
