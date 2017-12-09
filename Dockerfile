FROM ubuntu:16.04

RUN mkdir /home/atlassian

COPY atlassian-confluence-6.5.2-x64.bin /home/atlassian
COPY response.varfile  /home/atlassian

RUN apt update 

RUN  chmod 755 /home/atlassian/atlassian-confluence-6.5.2-x64.bin 
RUN   ./home/atlassian/atlassian-confluence-6.5.2-x64.bin -q -varfile /home/atlassian/response.varfile 
RUN   apt clean


CMD ["./opt/atlassian/confluence/bin/start-confluence.sh", "run"]

