import os
os.system("pip install telebot requests")
import telebot, requests
token = '7206781774:AAGh_KuIaE2qKV1GNs9n0AI0BAQvVRywCQU'
# Telegram botunu oluşturun
bot = telebot.TeleBot(token)

# Mesajları yanıtlama fonksiyonu
@bot.message_handler(content_types=['text'])
def echo_message(message):
    bot.reply_to(message, message.text)

# Bot'u başlatın
print(requests.get(f"https://api.telegram.org/bot{token}/getMe").text)
bot.polling()
