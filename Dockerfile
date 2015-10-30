FROM rhel7
EXPOSE 8000
WORKDIR /data
#CMD python -m http.server 8000
CMD python -m SimpleHTTPServer 8000
