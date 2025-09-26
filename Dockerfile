FROM rommapp/romm:latest
LABEL Maintainer="bizalu"

# Prepare python environment
ENV PYTHONUNBUFFERED=1
RUN apk add --no-cache python3
RUN apk -U upgrade --no-cache
RUN if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi
