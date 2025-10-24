Config = {}
Config.Debug = false

Config.Locale = "en" -- Script language
Config.Framework = "standalone" -- Available: "standalone", "esx"

Config.Cooldown = 1000 -- Time in milliseconds
Config.Bells = {
    {
        Coords = vector3(0.0, 0.0, 0.0),
        Job = "example", -- Job that recieves notification (does not work on standalone)

        Sound = { -- Requires xsound
            File = "./sounds/bell.mp3", -- URL to sound file
            Volume = 1.0,
            Range = 15
        },

        Marker = {
            Type = 7, -- Put -1 to disable marker
            DrawDistance = 10.0,
            Size = vector3(1.0, 1.0, 1.0),
            Color = { r = 255, g = 0, b = 0, a = 100 },
        },

        Notification = {
            Title = "Title Example",
            Subtitle = "Subtitle Example",
            Text = "Text Example",
            Image = "CHAR_DEFAULT", -- Available Images: https://wiki.rage.mp/wiki/Notification_Pictures
        },
    },
}