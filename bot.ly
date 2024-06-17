import telebot

# Telegram botunu oluşturun
bot = telebot.TeleBot('7206781774:AAGh_KuIaE2qKV1GNs9n0AI0BAQvVRywCQU')

# Mesajları yanıtlama fonksiyonu
@bot.message_handler(content_types=['text'])
def echo_message(message):
    bot.reply_to(message, message.text)

# Bot'u başlatın
bot.polling()
