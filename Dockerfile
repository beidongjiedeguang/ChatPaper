FROM beidongjiedeguang/ubuntu:22.04


RUN pip install --no-cache-dir \
    arxiv==1.4.3 \
    PyMuPDF==1.21.1 \
    requests==2.26.0 \
    tiktoken==0.2.0 \
    tenacity==8.2.2 \
    pybase64==1.2.3 \
    Pillow==9.4.0 \
    openai==0.27.0 \
    markdown \
    gradio==3.20.1 \
    sparrow-python

RUN pip install --no-cache-dir --upgrade tiktoken ipywidgets
COPY . .

ENTRYPOINT [ "sh", "start-entrypoint.sh" ]
