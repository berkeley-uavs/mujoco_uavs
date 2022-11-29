FROM pmallozzi/devenvs:base-gui-gymphysics-310

WORKDIR /root

RUN mkdir host ide

COPY . /root/host
WORKDIR /root/host

RUN python -m pip install -U matplotlib
RUN pip install dm_control

