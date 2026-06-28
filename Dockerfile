FROM httpd:2.4

# mod_proxy / mod_rewrite / .htaccess を有効化
RUN sed -i 's/^#LoadModule proxy_module/LoadModule proxy_module/' conf/httpd.conf && `
    sed -i 's/^#LoadModule proxy_http_module/LoadModule proxy_http_module/' conf/httpd.conf && `
    sed -i 's/^#LoadModule rewrite_module/LoadModule rewrite_module/' conf/httpd.conf && `
    sed -i 's/AllowOverride None/AllowOverride All/' conf/httpd.conf

COPY httpd.conf /usr/local/apache2/conf/httpd.conf