#!/bin/bash

while [[ true ]]; do
    TIMER_COUNT=$(ps -ef "timer.ini" | grep -v grep | wc -l)
    PROCESSOR_COUNT=$(ps -ef "processor.ini" | grep -v grep | wc -l)

    if [[ $TIMER_COUNT -eq 0 ]]; then
        /usr/local/bin/php /var/www/html/vendor/got/stark/src/Stark/run.php -f /var/www/html/vendor/got/tarth/scripts/timer.ini
    fi

    if [[ $PROCESSOR_COUNT -eq 0 ]]; then
        /usr/local/bin/php /var/www/html/vendor/got/stark/src/Stark/run.php -f /var/www/html/vendor/got/tarth/scripts/processor.ini
    fi

    sleep 1
done
