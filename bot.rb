require_relative 'config.rb'
require 'telegram/bot'

Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message|
    case message.text
    when '/pidor@SubllmeBot'
      PHRASES.sample.each do |phrase|
        bot.api.send_message(chat_id: message.chat.id, text: phrase)
        sleep(2)
      end
    when '/pidoreg@SubllmeBot'
      bot.api.send_message(chat_id: message.chat.id, text: 'Эй, ты уже в игре!')
    when '/pidorall@SubllmeBot'
      bot.api.send_message(chat_id: message.chat.id, text: "Топ-10 Пидоров за все время:\n1.nanoanna - ∞ раз")
    end
  end
end
