# Yuzu Bash Scripts for Steam Deck

These bash scripts will download the latest [Yuzu](https://yuzu-emu.org/) AppImage from either the [Mainline](https://github.com/yuzu-emu/yuzu-mainline/releases) and/or [PineappleEA](https://github.com/pineappleEA/pineapple-src/releases) Github repositiories. These scripts were intended to be used with the [Steam Deck](https://store.steampowered.com/steamdeck), however they can be used with other Linux distributions.

The filenames are normalized so you can add them to Steam without breaking the link every time a new release is downloaded. 

## Instructions:

1. Download the scripts and/or clone this GitHub Repository to your Steam Deck.
2. Run either script will create a folder called `image` within the working directory, and will create either `Linux-Yuzu-EA.AppImage` or `Linux-Yuzu-EA.AppImage` within that directroy depending on which script you executed.
3. A Symlink `Linux-Yuzu.AppImage` will also be created in working directory, which will link to the last AppImage downloaded.

### Why do both AppImages ***AND*** a Symlink?

If you wanted to have both Yuzu AppImages available to you in Steam, add both AppImages from within the `image` folder, otherwise only add the `Linux-Yuzu.Appimage` symlink to Steam if you plan on swapping between builds and only want one Yuzu Steam entry.

### Bonus!
You can use [Decky Loader](https://github.com/SteamDeckHomebrew/decky-loader) and the Bash Shortcut plugin by [Tormak9970](https://github.com/Tormak9970) to run the scripts without having to go desktop mode!

Add the following shortcuts via the Bash Shortcut plugin config (sudo needed):

#### Mainline Update:
`LD_PRELOAD=QT_SCALE_FACTOR=1.25 konsole -e "sudo /location/to/the/script/./Yuzu_Mainline_Downloader.sh"`

#### EA Update:
`LD_PRELOAD=QT_SCALE_FACTOR=1.25 konsole -e "sudo /location/to/the/script/./Yuzu_EA_Downloader.sh"`
