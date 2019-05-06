import discord
from db_con import *

TOKEN = 'NTc0NDk1NzExOTQ5NzUwMjcy.XM6PDA.x7cYhl3Yz_u-AjcyNkcd1dhGeko'
client = discord.Client()


@client.event
async def on_ready():
    print('{0.user} inbox is Online!'.format(client))

@client.event
async def on_message(message):
    pesan = message.content
    pesan_balik = pesan + " juga"
    if message.author == client.user:
        return
    else:
        insert = "insert into tb_inbox values (NULL, '%s')" % pesan
        cur.execute(insert)
        db.commit()

        insert = "insert into tb_outbox values (NULL, '%s', '0')" % pesan_balik
        cur.execute(insert)
        db.commit()

        await message.channel.send('-->This is BOT<--')
client.run(TOKEN)
