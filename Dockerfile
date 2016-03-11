FROM lukasheinrich/yadage
RUN pip install 'ipython[notebook]' wand
CMD eval $(carina env $YADAGE_CLUSTER) && jupyter notebook --ip 0.0.0.0
