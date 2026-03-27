# Log Analyzer — Bash-скрипт для автоматизации анализа логов

## О проекте
Этот скрипт автоматизирует анализ лог-файлов. Вручную такой анализ занимает 45 минут, а с помощью скрипта — 30 секунд.  
Скрипт был написан в рамках подготовки к собеседованию на DevOps-направление.

## Технологии
- Bash
- Команды: `grep`, `find`, `for` loop, перенаправление вывода

## Что делает скрипт
1. Находит все `.log` файлы, изменённые за последние 24 часа
2. Ищет в них строки с ключевыми словами: `ERROR`, `FATAL`, `CRITICAL`
3. Подсчитывает количество таких строк
4. Если ошибок больше 10 — добавляет предупреждение `ACTION REQUIRED`
5. Сохраняет полный отчёт в файл `log_analysis_report.txt`

## Как запустить
```bash
# Сделать скрипт исполняемым
chmod +x log_analyzer.sh

# Запустить
./log_analyzer.sh
```

## Пример вывода(отчет)
```
==========================================
===========/Users/.../application.log================
==========================================

searching ERROR logs in /Users/.../application.log file
[2025-06-01 08:17:48] [ERROR] Payment gateway timeout...
[2025-06-01 08:25:48] [ERROR] Insufficient disk space...

Number of ERROR logs in /Users/.../application.log file
6

searching FATAL logs in /Users/.../application.log file
[2025-06-01 08:47:22] [FATAL] Out of memory error...
```

