@echo off
echo Checking DB tools... > db_tools.txt
docker -v >> db_tools.txt 2>&1
if %errorlevel% equ 0 (
    echo Docker found >> db_tools.txt
) else (
    echo Docker not found >> db_tools.txt
)

psql --version >> db_tools.txt 2>&1
if %errorlevel% equ 0 (
    echo Postgres found >> db_tools.txt
) else (
    echo Postgres not found >> db_tools.txt
)
