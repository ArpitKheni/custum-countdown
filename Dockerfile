FROM caddy
COPY . .
ENTRYPOINT [ "caddy" ]
CMD ["file-server"]
