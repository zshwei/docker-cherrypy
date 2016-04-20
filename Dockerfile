FROM python 
RUN pip install cherrypy coverage # cherrypy server + python 3 test coverage
ADD *.py /
ADD *.sh / 
CMD python run.py
