FROM nginx:1.23-alpine
                    
# 维护者信息
LABEL maintainer="jenkins@company.com"
LABEL version="${VERSION}"
LABEL description="${PROJECT_NAME} frontend application"

# 删除默认的界面
RUN rm -rf /etc/share/nginx/html/*


# 复制构建好的静态文件
COPY dist/ /usr/share/nginx/html/

# 暴露端口
EXPOSE 80


					
