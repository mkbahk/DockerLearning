
cat Dockerfile
FROM ubuntu:18.04
ADD df.sh /bin/df.sh
RUN chmod +x /bin/df.sh
ENTRYPOINT ["/bin/df.sh"]


#docker run -v /webdata:/webdata -d -name df mkbahk/df:latest
#docker run -d -v /webdata:/user/share/nginx/html:ro -p 8384:80  -d nginx:1.14
