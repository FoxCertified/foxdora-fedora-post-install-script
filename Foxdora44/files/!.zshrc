# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/fox/.zshrc'

autoload -Uz compinit
compinit


#FASTFETCH2FOXFETCH
alias foxfetch="fastfetch"
function clearfox {
clear
fastfetch
}

#DNF2FOX
alias foxse="dnf search"
alias foxin="sudo dnf install"
alias foxrm="sudo dnf remove"
alias refoxin="sudo dnf reinstall"
alias swapfox="sudo dnf swap"
alias foxlist="dnf repolist"
alias foxinfo="dnf list --installed | grep"

function foxupdater {
sudo dnf update
flatpak update
}

function foxhelp {
echo "DNF MANAGEMENT VIA TERMINAL:"
echo " ❯dnf search [search term]"
echo " ❯sudo dnf install [program name]"
echo " ❯sudo dnf remove [program name]"
echo " ❯sudo dnf update --refresh"
echo ""
echo "FLATPAK MANAGEMENT VIA TERMINAL:"
echo "Common commands for Flatpak"
echo "❯flatpak search [search program name]"
echo "❯flatpak install [program name]"
echo "❯flatpak remove [program name]"
echo "❯flatpak update"
echo ""
echo "DNF ALIASES"
echo " ❯foxse [search term]"
echo " ❯foxin [program name]"
echo " ❯foxrm [program name]"
echo "Custom updater command that updates DNF and flatpak"
echo " ❯foxupdater"
}

function installfont {
wget https://github.com/googlefonts/noto-emoji/raw/main/fonts/Noto-COLRv1.ttf
sudo mkdir -p /usr/local/share/fonts/Noto-COLRv1
sudo cp ./Noto-COLRv1.ttf /usr/local/share/fonts/Noto-COLRv1/
rm ./Noto-COLRv1.ttf
}

function removefont {
sudo rm /usr/local/share/fonts/Noto-COLRv1/Noto-COLRv1.ttf
sudo rmdir /usr/local/share/fonts/Noto-COLRv1
}

fastfetch -c launch-term.jsonc
echo ""
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
