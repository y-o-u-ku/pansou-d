FROM ghcr.io/fish2018/pansou-web
ENV ENABLED_PLUGINS="labi,zhizhen,shandian,duoduo,muou,wanou"
# Railway 会自动注入 PORT（如 4321）
ENV PORT=${PORT:-8080}
EXPOSE ${PORT}
CMD ["sh", "-c", "./pansou-web --port=$PORT"]
