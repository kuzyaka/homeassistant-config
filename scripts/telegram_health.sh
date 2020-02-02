tg_token=$(grep -E 'telegram_bot_api_key\:' ../secrets.yaml | awk '{print $2}')
if curl --silent --fail -m 30 -o /dev/null -G  https://api.telegram.org/bot$tg_token/getMe; then
    echo online
else
    echo offline
fi