# Telegram Support Bot
is a support bot for telegram bots, using the Telegraf framework (by @dotcypress). It let users create tickets which will be send to a staff group and can be answered by a reply.

[![Bot API Version](https://img.shields.io/badge/Bot%20API-v3.1-f36caf.svg?style=flat-square)](https://core.telegram.org/bots/api)
[![NPM Version](https://img.shields.io/npm/v/telegraf.svg?style=flat-square)](https://www.npmjs.com/)
[![node](https://img.shields.io/node/v/telegraf.svg?style=flat-square)](https://www.npmjs.com/package/)
[![js-standard-style](https://img.shields.io/badge/code%20style-standard-brightgreen.svg?style=flat-square)](http://standardjs.com/)

## Documentation

`telegram-support-bot` was built on top of [`Telegraf`](https://github.com/telegraf/telegraf) libary.

[Telegraf documentation](http://telegraf.js.org).

## Installation

```js
$ npm install telegraf --save
$ git clone https://github.com/bostrot/telegram-support-bot.git
$ cd telegram-support-bot
$ sudo bash setup 
```
Enter the bot location (ex. /home/bots/mybot.js) when asked and then your bot name (ex. mybot)
`setup` will create two systemctl links in order that your bot will be automatically restarted when it crashes and runs in the background.

## Configuration

You need to set your bot token and chat ids in `bin/support.js`:

```js
/* edit below */
const bot = new Telegraf('BOT_TOKEN_SUPPORT_BOT') // support bot token
var staff_chat = 'SUPPORT_STAFF_GROUP_ID' // telegram staff group chat id
var owner_id = 'OWNER_ID' // telgram owner id
var supported_bot = 'service_name' // service name of the supported bot
var startCommandText = 'Welcome in our support chat! Ask your question here.'
var faqCommandText = 'Check out our FAQ here: https://bitgram.pro/index.php/bitgram-faq'
var con = mysql.createConnection({ // only needed if you want to get user info from a mysql database with /id command
  host: 'HOST',
  user: 'USR',
  password: 'PWD',
  database: 'DB'
})
/* edit end */
```

## Telegram token

To use the [Telegram Bot API](https://core.telegram.org/bots/api), 
you first have to [get a bot account](https://core.telegram.org/bots) 
by [chatting with BotFather](https://core.telegram.org/bots#6-botfather).

BotFather will give you a *token*, something like `123456789:AbCdfGhIJKlmNoQQRsTUVwxyZ`.

## Creating a bot

[Telegraf bot framework](https://github.com/telegraf/telegraf) for building a bot
