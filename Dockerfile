FROM ghcr.io/fish2018/pansou-web:latest

# 环境变量：启用插件
ENV ENABLED_PLUGINS="labi,zhizhen,shandian,duoduo,muou,wanou"

# Railway 会注入 PORT，我们默认8080以防未定义
ENV PORT=8080

# 修复 ENTRYPOINT 缺失 / 路径问题
WORKDIR /app
COPY --from=0 / /app

# 可执行权限
RUN chmod +x /app/pansou-web || true

EXPOSE 8080

# 运行服务
CMD ["/app/pansou-web"]
