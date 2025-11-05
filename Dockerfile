# 使用 pansou 官方镜像
FROM ghcr.io/fish2018/pansou-web:latest

# 设置环境变量（启用插件）
ENV ENABLED_PLUGINS="labi,zhizhen,shandian,duoduo,muou,wanou"

# Railway 会自动注入 PORT 环境变量，比如 12345
# 如果没有，就默认 8080
ENV PORT=8080

# 暴露端口（只是声明）
EXPOSE 8080

# 使用 shell 执行，以便在运行时识别 $PORT
CMD ["sh", "-c", "./pansou-web --port=${PORT}"]
