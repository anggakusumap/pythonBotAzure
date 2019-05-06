import discord
from db_con import *

TOKEN = 'NTc0NDk1NzExOTQ5NzUwMjcy.XM6PDA.x7cYhl3Yz_u-AjcyNkcd1dhGeko'
client = discord.Client()


@client.event
async def on_ready():
    print('{0.user} outbox is Online!'.format(client))


@client.event
async def on_message(message):
    if message.content.startswith("-->"):
        select = "select * from tb_outbox where flag = '0' "
        cur.execute(select)
        hasil = cur.fetchall()
        db.commit()
        for h in hasil:
            id = int(h[0])
            pesan_balik = h[1]

            await message.channel.send(pesan_balik)
            update = "update tb_outbox set flag = '1' where id_outbox = %d" % id
            cur.execute(update)
            db.commit()


client.run(TOKEN)
