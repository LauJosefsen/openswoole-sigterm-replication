FROM openswoole/swoole:22.0.0-php8.2-alpine

COPY server.php ./

STOPSIGNAL SIGTERM

EXPOSE 9501

CMD ["php", "server.php"]