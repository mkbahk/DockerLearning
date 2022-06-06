FROM mkbahk/ubuntu18-kubeflow-jupyter-katib:latest
EXPOSE 8888
ENV NB_PREFIX /
CMD ["sh","-c", "jupyter lab  --notebook-dir=/home/jovyan --ip=0.0.0.0 --no-browser --allow-root --port=8888 --NotebookApp.token='' --NotebookApp.password='' --NotebookApp.allow_origin='*' --NotebookApp.base_url=${NB_PREFIX}"]
