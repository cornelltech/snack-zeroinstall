FROM andrewosh/binder-base

MAINTAINER Michael Wilber <mwilber@mjwilber.org>

USER main

# Install Julia kernel
RUN julia -e 'Pkg.add("IJulia")'
RUN julia -e 'Pkg.add("Gadfly")' && julia -e 'Pkg.add("RDatasets")'

RUN /home/main/anaconda/bin/pip install --upgrade setuptools pip

RUN /home/main/anaconda/bin/pip install bokeh==0.10.0
RUN /home/main/anaconda/bin/pip install simplejson
RUN /home/main/anaconda/bin/pip install bokeh_image_explore

RUN /home/main/anaconda/bin/conda install -y -c https://conda.anaconda.org/gcr snack
