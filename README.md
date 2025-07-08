# Setting Up Fresh Install

---
## Arch Install

1. Set up wifi
```sh
iwctl --passphrase "passphrase" station wlan0 connect network-name
```
2. Check for successful connection
```sh
ip addr show
```
3. Proceed with `archinstall` command

---
## Configs & Fonts

1. `fish`: alternate to bash shell
2. `i3`: window manager
3. `kitty`: terminal
4. `polybar`: status bar
5. `rofi`: lightweight dynamic menu
6. `obsidian`: note-taking app
7. `ranger`: terminal file manager
8. `picom`: lightweight standalone compositor
9. `Xmodmap`: keyboard mappings config
10. `fonts/Hack`: font for system
11. `fonts/Feather`: include icons needed for `polybar` config
12. `fonts/KSARegular`: needed for Arabic support in `obsidian`

---
## Useful Apps

1. `redshift`: allow for warm screen coloring
2. `feh`: set up desktop background
3. `xclip`: for copying to clipboard
4. `timeshift`: create system snapshots for when NVIDIA drivers brick your new install
5. `vlc`: video and audio player
6. `onboard`: on-screen keyboard for helping with Arabic typing
7. `pavucontrol`: GUI for volume control
8. `arandr`: GUI for HDMI
9. `pillow`: for image preview support in `kitty`
10. `unzip`: unzipping `.zip`
11. `yay`: install anything not available with `pacman`
12. `ncdu`: manage storage (should use with `sudo` to access all directories)

---
## Useful Commands

1. for finding `WM_class` of program for `picom.conf`:
```sh
xprop
```
2. for finding keyboard mappings: 
```sh
xmodmap -pke
```
3. for auto-starting HDMI screen on startup (should be used in `i3/config`):
```sh
xrandr --output HDMI-1-0 --auto --right-of eDP-1 --output eDP-1
```

---
## Setting Up Wifi Post-Install

1. Check for network name
```sh
nmcli device wifi
```
1. Connect with passphrase
```sh
nmcli device wifi connect Network-Name password "Password"
```

---
## Setting Up Fish

1. Set `fish` as default shell (changes reflect after next login)
```sh
chsh --s /usr/bin/fish
```
2. Remove startup message
```sh
set -U fish_greeting
```

---
## Setting Up Fonts

1. Copy `fonts` into `$HOME/.local/share`
2. Run the following to install `fonts`
```sh
fc-cache -fv
```

---
## Setting Up Rofi

1. Copy `rofi/tokyo.rasi` to `/usr/share/rofi/themes` (Requires `sudo`)

---
## Setting up SSH Key on GitHub

1. Generate new SSH key
```sh
ssh-keygen -t ed25519 -C "your_email@example.com"
```
2. Press `Enter` to accept default location to save key file (`$HOME\.ssh\id_ed22519`)
3. Copy from `$HOME\.ssh\id_ed22519.pub`
4. Go to GitHub Settings
5. Select `SSH and GPG Keys`
6. Select `New SSH Key`
7. Paste into `Key` field
8. Test the connection
```sh
ssh -T git@github.com
```
9. Successful authentication screen will show if everything was done correctly

---
## Setting Up App Images

1. Create `applications` directory inside of `$HOME/.local/share`, all `.desktop` files will be placed here
2. Create `app.desktop file`
```sh
[Desktop Entry]
Name=app_name
Exec=app_path
Icon=app_icon "Default: utilities-terminal"
Type=Application
Terminal=false
Categories=Utility
```
3. Make executable
```sh
chmod +x app.desktop
```
4. File should appear in menu when using `rofi`

---
## Setting up Arabic Keyboard

1. Add the following to `i3/config`
```sh
exec_always --no-startup-id setxkbmap -layout us,ara -option grp:caps_toggle
```
2. Ensure this commands run after the previous
```sh
exec_always --no-startup-id sh -c 'sleep 1 && xmodmap $HOME/.Xmodmap'
```
