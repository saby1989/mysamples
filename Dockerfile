FROM python:alpine3.8

#copy the contents to the root
COPY . /app

#set the working directory
WORKDIR /app

# install the packages
RUN apk add build-base libffi-dev openssl-dev --no-cache
RUN pip3 install -r requirements.txt
RUN chmod +x run.sh

#command to run the script
CMD ["/bin/bash" ,"run.sh"]