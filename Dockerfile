FROM nginx as runtime
WORKDIR /app
COPY . .
COPY . /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY ./nginx.conf /etc/nginx/conf.d

EXPOSE 4000