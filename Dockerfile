FROM ghcr.io/fish2018/pansou-web
ENV ENABLED_PLUGINS="labi,zhizhen,shandian,duoduo,muou,wanou"
# Railway 会自动分配 PORT 环境变量，比如 4321
ENV PORT=${PORT:-80}
EXPOSE ${PORT}
CMD ["sh", "-c", "node server.js --port=$PORT"]
