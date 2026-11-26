# Railway: serve the static reel with Caddy (supports video range requests).
FROM caddy:2.8-alpine
COPY index.html /srv/index.html
COPY posters /srv/posters
COPY videos /srv/videos
CMD ["sh", "-c", "caddy file-server --root /srv --listen :${PORT:-8080}"]
