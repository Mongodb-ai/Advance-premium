from pyrogram import Client, filters
from info import ADMINS

@Client.on_message(filters.command("setvar") & filters.user(ADMINS))
async def setvarrrz(bot, message):
    """
    Heroku connection removed to prevent 401 Unauthorized error.
    """
    await message.reply_text(
        "<b>Notice:</b> Heroku connection is disabled.\n"
        "Variables edit karne ke liye Render dashboard ka use karein."
    )

