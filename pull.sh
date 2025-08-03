echo "Запуск процесса..."

TEST_DIR="weblogs"
LOGS_DIR="/var/log/nginx"
ARCHIVE_DIR="$TEST_DIR/logs_archive"
DATE=$(date +"%Y%m%d_%H%M%S")

mkdir -p "$TEST_DIR"
mkdir -p "$ARCHIVE_DIR"

tar -czf "$ARCHIVE_DIR/web_logs_$DATE.tar.gz" -C "$LOGS_DIR" .

echo "Логи веб-сервера скопированы в архив: $ARCHIVE_DIR/web_logs_$DATE.tar.gz"
