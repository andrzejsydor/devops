docker build -t log-cleaner .
docker run -v /var/log/myapplogs:/log_dir log-cleaner 1