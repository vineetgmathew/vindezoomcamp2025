FROM python:3.9 

RUN pip install pandas 

WORKDIR /app
COPY pipeline.py pipeline.py

#ENTRYPOINT [ "bash" ]

# below specifies that load into a python shell and run the file mentioned;
# if arguments need to be passed then they can be supplied with the docker run command 
ENTRYPOINT [ "python" , "pipeline.py" ]
