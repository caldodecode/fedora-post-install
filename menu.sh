#!/bin/bash

# tput clear      # clear the screen
# tput cup 3 15   # Move cursor to screen location X,Y (top left is 0,0)
# tput setaf 3    # Set a foreground colour using ANSI escape
# echo "XYX Corp LTD."
# tput sgr0
# tput cup 5 17
# tput rev        # Set reverse video mode
# echo "M A I N - M E N U"
# tput sgr0
# tput cup 7 15; echo "1. User Management"
# tput cup 8 15; echo "2. Service Management"
# tput cup 9 15; echo "3. Process Management"
# tput cup 10 15; echo "4. Backup"
# tput bold       # Set bold mode 
# tput cup 12 15
# read -p "Enter your choice [1-4] " choice
# tput clear
# tput sgr0
# tput rc


# sudo dnf install -y dialog

# function basic_gnome {
#   main_menu
# }

# function flatpaks {
#   if ! command -v flatpak --version &> /dev/null
#   then
#     local INST_DEP=$(dialog                                              \
#       --title "Instalar Flatpak"                                         \
#       --output-fd 1                                                      \
#       --clear                                                            \
#       --yesno "Esta ação vai instalar o flatpack, deseja continuar?" 0 0 \
#     )

#     echo INST_DEP
#     pause

#     # sudo dnf install -y flatpak
#     # echo "<the_command> could not be found"
#     # exit
#   fi

#   if ! command -v flatpak remotes | grep -q flathub &> /dev/null
#   then
#     local INST_DEP=$(dialog                                              \
#       --title "Instalar adicionar Flathub"                               \
#       --yesno "alalalal?" 0 0 \
#       --output-fd 1                                                      \
#       --clear                                                            \
#     )
#   fi

#   # flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  
#   jlocal INST_FLATPAKS=$(dialog                                                            \
#     --output-fd 1                                                                          \
#     --clear                                                                                \
#     --keep-tite                                                                            \
#     --checklist "Choose Flatpaks/Flathub to Install" 0 0 0                                 \
#     com.google.Chrome                    "BROWSER           Google Chrome"              on \
#     org.mozilla.firefox                  "BROWSER           Mozzila Firefox"            on \
#     com.transmissionbt.Transmission      "DOWNLOADS         Transmission"               on \
#     ca.desrt.dconf-editor                "MAINTENANCE       Dconf Editor"               on \
#     com.github.tchx84.Flatseal           "MAINTENANCE       Flatseal"                   on \
#     org.remmina.Remmina                  "MAINTENANCE       Remmina"                    on \
#     nl.hjdskes.gcolor3                   "DEV               Color Picker"               on \
#     org.filezillaproject.Filezilla       "DEV               FileZilla"                  on \
#     io.dbeaver.DBeaverCommunity          "DEV               DBeaver Community"          on \
#     com.mattjakeman.ExtensionManager     "GNOME             Extension Manager"          on \
#     org.gnome.Characters                 "GNOME             Characters"                 on \
#     org.gnome.Connections                "GNOME             Connections"                on \
#     org.gnome.Shotwell                   "GNOME             Shotwell"                   on \
#     org.gnome.TextEditor                 "GNOME             Text Editor"                on \
#     com.valvesoftware.Steam              "GAMES             Steam"                      on \
#     net.lutris.Lutris                    "GAMES             Lutris"                     on \
#     net.brinkervii.grapejuice            "GAMES             Grapejuice Roblox"          on \
#     org.libretro.RetroArch               "GAMES             RetroArch"                  on \
#     com.github.jeromerobert.pdfarranger  "OFFICE            PDF Arranger"               on \
#     org.libreoffice.LibreOffice          "OFFICE            LibreOffice"                on \
#     md.obsidian.Obsidian                 "PFFICE            Obsidian"                   on \
#     studio.kx.carla                      "AUDIO & VIDEO     Carla"                      on \
#     org.ardour.Ardour                    "AUDIO & VIDEO     Ardour"                     on \
#     com.obsproject.Studio                "AUDIO & VIDEO     OBS Studio"                 on \
#     org.kde.kdenlive                     "AUDIO & VIDEO     Kdenlive"                   on \
#     org.kde.krita                        "AUDIO & VIDEO     Krita"                      on \
#     org.videolan.VLC                     "AUDIO & VIDEO     VLC"                        on \
#   )
#   main_menu
# }

# function dnf_rpms {
#   main_menu
# }

# function main_menu {
#   local MENU_ITEN=$(dialog                            \
#     --output-fd 1                                     \
#     --clear                                           \
#     --keep-tite                                       \
#     --menu "Choose one:"  0 0 0                       \
#       basic_gnome "Minimal GNOME"                     \
#       flatpaks    "Install Flatpaks/Flathub"          \
#       dnf_rpms    "Install DNF/RPMS"                  \
#       vscode      "Visual Studio Code / FROM M$ REPO" \
#   )

#   ${MENU_ITEN}
# }

# main_menu

function menu {
  local total=0
  for i in "$@"
  do
    local total=$(($total+1))
    echo [ ] $total $i
  done
  # local total=$(($total-1))
  # local escape_char=$(printf "\u1b")                         # escape char, for special keys
  # local key                                                  # set key var localy
  # local posX=1                                               # set default posX
  # local posY=0                                               # set default posY
  # tput civis                                                 # hide cursor and clear window
  # tput cup $posY $posX; echo "-"                             # write first selector at inistial position
  # while true; do                                             # infinity loop
  #   read -rsn1 key                                           # read 1 one char from keyboard
  #   [[ $key == $escape_char ]] && read -rsn2 key             # read 2 more chars if fisrt char is escape_char
  #   tput cup $posY $posX; echo "+"                           # clear selector
  #   case $key in                                             # check pressed key
  #     'q') echo QUITTING ; exit ;;                           # q key
  #     '[A') posY=$((posY-1)) ;;                              # key up
  #     '[B') posY=$((posY+1))  ;;                             # key down
  #     '[D') echo LEFT ;;                                     # key left
  #     '[C') echo RIGHT ;;                                    # key right
  #     *) >&2 echo 'ERR bad key' $key 'asd';                  # any key 
  #   esac                                                     # end of key verification
  #   [ "$posY" -le "0" ] && posY=0                            # prevent $posY minor than 0
  #   [ "$posY" -gt "$total" ] && posY=$total                  # prevent $posY bigger than $total
  #   tput cup $posY $posX; echo "-"                           # write selector
  # done                                                       # end of loop
}

menu                                                                \
  --title "FEDORA CALDO DE CODE"                                    \
  --header 1 "Instaladores Flatpack/Flathub"                        \
  --header 2 "BROWSER"                                              \
  --option com.google.Chrome                    "Google Chrome"     \
  --option org.mozilla.firefox                  "Mozzila Firefox"   \
  --header 2 "DOWNLOADS"                                            \
  --option com.transmissionbt.Transmission      "Transmission"      \
  --header 2 "MAINTENANCE"                                          \
  --option ca.desrt.dconf-editor                "Dconf Editor"      \
  --option com.github.tchx84.Flatseal           "Flatseal"          \
  --option org.remmina.Remmina                  "Remmina"           \
  --header 2 "DEV"                                                  \
  --option nl.hjdskes.gcolor3                   "Color Picker"      \
  --option org.filezillaproject.Filezilla       "FileZilla"         \
  --option io.dbeaver.DBeaverCommunity          "DBeaver Community" \
  --header 2 "GNOME"                                                \
  --option com.mattjakeman.ExtensionManager     "Extension Manager" \
  --option org.gnome.Characters                 "Characters"        \
  --option org.gnome.Connections                "Connections"       \
  --option org.gnome.Shotwell                   "Shotwell"          \
  --option org.gnome.TextEditor                 "Text Editor"       \
  --header 2 "GAMES"                                                \
  --option com.valvesoftware.Steam              "Steam"             \
  --option net.lutris.Lutris                    "Lutris"            \
  --option net.brinkervii.grapejuice            "Grapejuice Roblox" \
  --option org.libretro.RetroArch               "RetroArch"         \
  --header 2 "OFFICE"                                               \
  --option com.github.jeromerobert.pdfarranger  "PDF Arranger"      \
  --option org.libreoffice.LibreOffice          "LibreOffice"       \
  --option md.obsidian.Obsidian                 "Obsidian"          \
  --header 2 "AUDIO & VIDEO"                                        \
  --option studio.kx.carla                      "Carla"             \
  --option org.ardour.Ardour                    "Ardour"            \
  --option com.obsproject.Studio                "OBS Studio"        \
  --option org.kde.kdenlive                     "Kdenlive"          \
  --option org.kde.krita                        "Krita"             \
  --option org.videolan.VLC                     "VLC"               