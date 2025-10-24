Config = {}
Config.Debug = false

Config.Locale = "en" -- Script language
Config.Framework = "standalone" -- Available: "standalone", "esx"

Config.Cooldown = 1000 -- Time in milliseconds
Config.Bells = {
    {
        Coords = vector3(441.0781, -981.3063, 30.6896),
        Job = "police", -- Job that recieves notification (does not work on standalone)

        Sound = { -- Requires xsound
            File = "./sounds/bell.mp3", -- URL to sound file
            Volume = 1.0,
            Range = 15,
        },

        Marker = {
            Type = 21, -- Put -1 to disable marker
            DrawDistance = 10.0,
            Size = vector3(0.5, 0.5, 0.35),
            Color = { r = 0, g = 180, b = 255, a = 100 },
        },

        Notification = {
            Title = "Bell Ringed",
            Subtitle = "Mission Row Police Department",
            Text = "Someone rang the bell at the reception.",
            Image = "CHAR_911", -- Available Images: https://wiki.rage.mp/wiki/Notification_Pictures
        },
    },
}