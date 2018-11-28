FROM python:2.7


COPY requirements.txt ./

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

RUN useradd -ms /bin/bash jupyter
USER jupyter

WORKDIR /workspace

ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8889"]