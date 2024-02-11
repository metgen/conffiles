#croxZshRc
export TERM="xterm-256color"
export KWIN_TRIPLE_BUFFER=1
export LC_ALL=en_GB.UTF-8

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(host user dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator vcs battery time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# ZPlug

if [[ ! -d ~/.zplug ]];then
    git clone https://github.com/b4b4r07/zplug ~/.zplug
fi
source ~/.zplug/init.zsh

# Theme
zplug romkatv/powerlevel10k, as:theme

# Aliases
zplug "robbyrussell/oh-my-zsh", as:plugin, use:"lib/*.zsh"

# Plugins
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/colorize",          from:oh-my-zsh
zplug "lib/completion",            from:oh-my-zsh
zplug "lib/history",               from:oh-my-zsh
zplug "lib/key-bindings",          from:oh-my-zsh
zplug "lib/termsupport",           from:oh-my-zsh
zplug "lib/directories",           from:oh-my-zsh
zplug "plugins/git",               from:oh-my-zsh
zplug "plugins/history",           from:oh-my-zsh

zplug "zsh-users/zsh-autosuggestions"
zplug "zdharma/fast-syntax-highlighting" #Подсветка синтаксиса
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "MichaelAquilina/zsh-you-should-use" # Сообщает о том, что для команды существует алиас

zplug check || zplug install
zplug load

# ADB
export PATH=$PATH:/home/crox/platform-tools/

    # Aliases list
    #
    # Timeshift
    #
    alias tm="sudo timeshift"
    alias tmc="sudo timeshift --create"
    alias tmd="sudo timeshift --delete"
    alias tmda="sudo timeshift --delete-all"
    alias tml="sudo timeshift --list"
    #
    # Neofetch
    #
    alias n="neofetch" #neofetch
    alias k="uname -rs" #kernel version
    alias g="gnome-shell --version" #gnome version
    alias f="lsb_release -sd"
    alias m="inxi -G |grep mesa"
    alias age="stat / | grep Birth"
    alias ram="sudo dmidecode -t memory | grep Speed" #memory speed
    alias cpu="lscpu | grep Model" #cpu model
    alias cpuc="lscpu" #lscpu
    alias w="wine --version" #wine version
    alias pc="inxi -Ixxx"
    alias net="inxi -Nxxx"
    #
    # DNF
    #
    alias up="sudo dnf upgrade --refresh --best --allowerasing -y && flatpak update -y"
    alias cc="sudo dnf autoremove && dnf clean all && flatpak uninstall --unused -y && flatpak remove --delete-data && sudo journalctl --vacuum-time=1weeks"
    alias c="clear"
    alias dnfr="sudo dnf autoremove"
    alias dnfs="dnf search"
    alias dnfi="sudo dnf install"
    #
    # PC
    #
    alias son="sudo systemctl suspend" #sleep
    alias logout="loginctl terminate-user crox" #logout
    alias ls="ls --color" #ls color
    alias l="lsd --date '+%d.%m.%Y %H:%M' -lah" #lsd
    #
    # Flatpak
    #
    alias fli="flatpak install --noninteractive -y flathub"
    alias flr="flatpak remove --noninteractive -y"
    alias fr="flatpak repair"
    alias fl="flatpak list"
    #
    # Gnome Text Editor
    #
    alias gte="gnome-text-editor"
    alias sgte="sudo gnome-text-editor"
    #
    # System folders
    #
    alias fstab="sudo nano /etc/fstab"
    alias zshrc="nano .zshrc"
    alias bashrc="nano .bashrc"
    alias grubedit="sudo nano /etc/default/grub"
    alias upgrub="sudo grub2-mkconfig -o /boot/grub2/grub.cfg"
    alias upgrubefi="sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg"
    alias cdvar="cd ~/.var/"
    alias cdconf="cd ~/.config/"
    alias cdhome="cd ~/"
    alias sn="sudo nautilus"
    #
    #
    #
    


