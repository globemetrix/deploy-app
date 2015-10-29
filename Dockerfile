FROM tutum/wordpress-stackable
RUN apt-get update && apt-get install -yq git && rm -rf /var/lib/apt/lists/*
ADD run-custom.sh /run-custom.sh
RUN chmod +x /*.sh
CMD ["/run-custom.sh"]
