FROM redis:latest

# Set volumes up
VOLUME /data
WORKDIR /data

# Copy files up
COPY docker-entrypoint.sh /usr/local/bin
COPY run.sh /

# fix permissions
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

RUN chmod +x /run.sh

# set entrypoint
ENTRYPOINT ["docker-entrypoint.sh"]

# expose port
EXPOSE 6379

# run the file!
CMD /run.sh
