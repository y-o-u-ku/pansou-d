# ✅ 使用官方镜像作为基础镜像
FROM ghcr.io/fish2018/pansou-web:latest

# ✅ 设置 Railway 环境变量（Railway 自动注入 $PORT）
ENV DOMAIN=railway.app
ENV PANSOU_PORT=8888
ENV PANSOU_HOST=0.0.0.0
ENV ENABLED_PLUGINS=labi,zhizhen,shandian,duoduo,muou,wanou
ENV HEALTH_CHECK_INTERVAL=30
ENV HEALTH_CHECK_TIMEOUT=10
ENV HEALTH_CHECK_RETRIES=3

# ✅ Railway 容器暴露的端口（Railway 仅映射此端口）
EXPOSE 80

# ✅ 保留镜像原始 ENTRYPOINT，只重写 CMD（防止丢失 /app/start.sh）
CMD ["sh", "-c", "/app/start.sh && tail -f /app/data/logs/backend/pansou.log"]
