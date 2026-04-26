class Config(object):
    LOGGER = True

    # Get this value from my.telegram.org/apps
    OWNER_ID = "8546535996"
    sudo_users = "8053803602"
    GROUP_ID = -1003942224732
    TOKEN = "8768582373:AAEtl2Cp1swdGC3RXKXXh3rJEu3XyOgMgyA"
    mongo_url = "mongodb+srv://Elevenyts:Elevenyts@cluster0.vuyc1u2.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0"
    PHOTO_URL = ["https://telegra.ph/file/b925c3985f0f325e62e17.jpg", "https://telegra.ph/file/4211fb191383d895dab9d.jpg"]
    SUPPORT_CHAT = "AdamBot_support"
    UPDATE_CHAT = "waifugrabbbbotupdates"
    BOT_USERNAME = "waifuhub_officialBot"
    CHARA_CHANNEL_ID = "-1003985910295"
    api_id = 34224204
    api_hash = "0dfa074770803265e8c61ddda0ad6fb0"

    
class Production(Config):
    LOGGER = True


class Development(Config):
    LOGGER = True
