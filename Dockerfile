FROM python 
RUN pip install cherrypy coverage # cherrypy server + python 3 test coverage
ADD *.py /
ADD *.sh / 
ADD prod.conf /
ADD logo.png /
CMD python run.py
