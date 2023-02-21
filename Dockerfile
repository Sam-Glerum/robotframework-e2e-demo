
        FROM python:3
        WORKDIR /tests
        COPY . /tests
        
RUN apt-get update
RUN pip install -r requirements.txt
        


        #CMD ["robot", "/tests"]
        