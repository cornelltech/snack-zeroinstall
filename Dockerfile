FROM andrewosh/binder-base

MAINTAINER Michael Wilber <mwilber@mjwilber.org>

USER main

RUN /home/main/anaconda/bin/pip install --upgrade setuptools pip || true

RUN /home/main/anaconda/bin/pip install bokeh==0.10.0
RUN /home/main/anaconda/bin/pip install simplejson
RUN /home/main/anaconda/bin/pip install bokeh_image_explore

RUN /home/main/anaconda/bin/conda install -y -c https://conda.anaconda.org/gcr snack
