###
dnf install -y dialog

### FLATPAKS
dnf install -y flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

### INSTALL FLATPAKS
INST_FLATPAKS=$(dialog \
  --keep-tite                                                                            \
  --checklist "Choose Flatpaks to Install" 0 0 0                                         \
  --output-fd 1                                                                          \
  com.google.Chrome                    "BROWSER           Google Chrome"              on \
  org.mozilla.firefox                  "BROWSER           Mozzila Firefox"            on \
  com.transmissionbt.Transmission      "DOWNLOADS         Transmission"               on \
  ca.desrt.dconf-editor                "MAINTENANCE       Dconf Editor"               on \
  com.github.tchx84.Flatseal           "MAINTENANCE       Flatseal"                   on \
  org.remmina.Remmina                  "MAINTENANCE       Remmina"                    on \
  nl.hjdskes.gcolor3                   "DEV               Color Picker"               on \
  org.filezillaproject.Filezilla       "DEV               FileZilla"                  on \
  md.obsidian.Obsidian                 "DEV               Obsidian"                   on \
  io.dbeaver.DBeaverCommunity          "DEV               DBeaver Community"          on \
  com.mattjakeman.ExtensionManager     "GNOME             Extension Manager"          on \
  org.gnome.Characters                 "GNOME             Characters"                 on \
  org.gnome.Connections                "GNOME             Connections"                on \
  org.gnome.Shotwell                   "GNOME             Shotwell"                   on \
  org.gnome.TextEditor                 "GNOME             Text Editor"                on \
  com.valvesoftware.Steam              "GAMES             Steam"                      on \
  net.lutris.Lutris                    "GAMES             Lutris"                     on \
  net.brinkervii.grapejuice            "GAMES             Grapejuice Roblox"          on \
  org.libretro.RetroArch               "GAMES             RetroArch"                  on \
  com.github.jeromerobert.pdfarranger  "OFFICE            PDF Arranger"               on \
  org.libreoffice.LibreOffice          "OFFICE            LibreOffice"                on \
  studio.kx.carla                      "AUDIO & VIDEO     Carla"                      on \
  org.ardour.Ardour                    "AUDIO & VIDEO     Ardour"                     on \
  com.obsproject.Studio                "AUDIO & VIDEO     OBS Studio"                 on \
  org.kde.kdenlive                     "AUDIO & VIDEO     Kdenlive"                   on \
  org.kde.krita                        "AUDIO & VIDEO     Krita"                      on \
  org.videolan.VLC                     "AUDIO & VIDEO     VLC"                        on \
)

[[ ! -z "$INST_FLATPAKS" ]] && flatpak install flathub -y $INST_FLATPAKS