FROM nginx:stable-alpine-slim

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html favicon.svg founder.jpg og-image.png /usr/share/nginx/html/

HEALTHCHECK --interval=30s --timeout=3s CMD wget -q --spider http://127.0.0.1/ || exit 1
