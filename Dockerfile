FROM lukasheinrich/yadage
RUN yum install -y libffi-devel gcc gcc-c++ openssl openssl-devel
RUN pip install 'ipython[notebook]' 'requests[security]'
CMD eval $(carina env $YADAGE_CLUSTER) && jupyter notebook --ip 0.0.0.0
