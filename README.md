# [telegram-support-bot docker-compose edition](https://github.com/kilex/telegram-support-bot)
is a support bot for telegram bots, using the Telegraf framework (by [@dotcypress](https://github.com/dotcypress)). It let users create tickets which will be send to a staff group and can be answered by a reply.

fork from [bostrot](https://github.com/bostrot/telegram-support-bot)

[![Bot API Version](https://img.shields.io/badge/Bot%20API-v3.1-f36caf.svg?style=flat-square)](https://core.telegram.org/bots/api)
[![NPM Version](https://img.shields.io/npm/v/telegraf.svg?style=flat-square)](https://www.npmjs.com/)
[![node](https://img.shields.io/node/v/telegraf.svg?style=flat-square)](https://www.npmjs.com/package/)
[![js-standard-style](https://img.shields.io/badge/code%20style-standard-brightgreen.svg?style=flat-square)](http://standardjs.com/)

<table>
<tr>
<th><img src="https://puu.sh/wyvPd/8dde465527.jpg" /></th>
<th><img src="https://puu.sh/wyvxD/35a3b70290.jpg" /></th>
</tr>
</table>

## Documentation

`telegram-support-bot` was built on top of [`Telegraf`](https://github.com/telegraf/telegraf) libary.

[Telegraf documentation](http://telegraf.js.org).

## Installation
fix copy config.js.example to config.js, fix config.js, after:
```
docker-compose build
docker-compose up -d
```

## Configuration

You can get your ID with /id. The first number will be yours the second the one from the group you are in (if you are in one; including the minus).

You need to set your bot token and chat ids in `config.js`:

```js
module.exports = {
    bot_token: "YOUR_BOT_TOKEN", // support bot token
    staffchat_id: "SUPERGROUP_CHAT_ID",  // telegram staff group chat id eg. -123456789
    owner_id: "YOUR_TELEGRAM_ID",
    supported_bot: "", // service name of the supported bot leave empty if you don't have one
    startCommandText: "Welcome in our support chat! Ask your question here.",
    faqCommandText: "Check out our FAQ here: Address to your FAQ",
};
```

## Features

When a user sends a message to the support chat it will create a ticket which will be forwarded to the staff group. Any admin in the staff group may answer that ticket by just replying to it. Salutation is added automatically. Photos will be forwared too.

Currently the support chat offers these commands (staff commands):
* `/open` - lists all open tickets (messages where noone has replied yet)
* `/close` - close a ticket manually (in case someone writes 'thank you')
* `/id (userid)` - lists some stuff from the database about the user

User commands:
* `/start` - tells the user how to use this bot
* `/faq` - shows the FAQ

This you should only care about when you intend to "support" another bot e.g. salesbot with this. This would enable "ANTI-CRASH" and commands like start and stop. Remember to use this only when you have two bots.

Admin/Owner commands:
* `/root` - Starts the listener and prevents the bot from crashing (restarts it and sends the log into the staff chat); Also this will open up a dashboard where the admin/owner can control the bot with following `Update`, `Restart`, `Log`, `Stop`.

<img src="https://puu.sh/wywe5/a4c3cee0b7.png" width="400" height="400" />

## Telegram token

To use the [Telegram Bot API](https://core.telegram.org/bots/api), 
you first have to [get a bot account](https://core.telegram.org/bots) 
by [chatting with BotFather](https://core.telegram.org/bots#6-botfather).

BotFather will give you a *token*, something like `123456789:AbCdfGhIJKlmNoQQRsTUVwxyZ`.

## Creating a bot

[Telegraf bot framework](https://github.com/telegraf/telegraf) for building a bot

## Help

You are welcome to contribute with pull requests, bug reports, ideas and donations. Join the forum if you have any general purpose questions: [discuss.bostrot.com](https://discuss.bostrot.com)

Bitcoin: [1ECPWeTCq93F68BmgYjUgGSV11XuzSPSeM](https://www.blockchain.com/btc/payment_request?address=1ECPWeTCq93F68BmgYjUgGSV11XuzSPSeM&currency=USD&nosavecurrency=true&message=Bostrot)

PayPal: [paypal.me/bostrot](https://paypal.me/bostrot)

Hosting: [2.50$ VPS at VULTR](https://www.vultr.com/?ref=7505919)
