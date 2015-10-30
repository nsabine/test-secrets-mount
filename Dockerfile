FROM rhel7
EXPOSE 8000
WORKDIR /data
CMD python -m SimpleHTTPServer 8000
