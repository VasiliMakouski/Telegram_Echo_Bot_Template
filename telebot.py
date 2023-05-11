#
#   Telegram Echo Bot Template
#
#   Created by Vasili Makouski
#
#   Copyleft
#

import os
from aiogram import Bot, Dispatcher, executor, types

BOT_TOKEN = 'You_Telegramm_Bot_Token' #Add here your Telegram Bot token

print("===== BOT START =====")
bot = Bot(token=BOT_TOKEN)
dp = Dispatcher(bot)

@dp.message_handler(commands=['start'])
async def send_welcome(message: types.Message):
	await message.reply("Hi.\nSay something.")

@dp.message_handler()
async def echo(message: types.Message):
	await message.answer(message.text)

if __name__ == '__main__':
	executor.start_polling(dp, skip_updates=True)


