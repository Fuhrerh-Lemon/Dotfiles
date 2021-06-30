#  __  __ _   _____ _     _     
# |  \/  (_) |  ___(_)___| |__  
# | |\/| | | | |_  | / __| '_ \ 
# | |  | | | |  _| | \__ \ | | |
# |_|  |_|_| |_|   |_|___/_| |_|
# Autor: FuhrerhLemon                               

# >>>> Anaconda >>>>
eval ~/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# >>>> Fin >>>>

# >>>> Exportando >>>>
#
set -Ux DISPLAY 127.0.0.1:0.0       # Mostrar GUI en windows
set fish_greeting                   # Suprime el mensaje de fish
# set -Ux TERM kitty                  # Establece el tipo de terminal
set -Ux EDITOR nvim                 # $EDITOR use Nvim en la terminal
set -Ux VISUAL vim                 # $VISUAL use nvim en el modo GUI
#

# Recursos
#
export EDITOR=nvim || export EDITOR=vim
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
#
# >>>> Fin >>>>

source $HOME/.config/fish/shortcuts.fish
# source $HOME/.config/fish/colors.fish

# >>>> Mostrando Datos del Sistema >>>>
# neofetch
# nerdfetch
starship init fish | source
#
# >>>> Fin >>>>

# >>>> Alias >>>>
alias ipp="curl ipinfo.io/ip"
alias df="df -h"
alias du="df -ch"
alias sdot="cd ~/.config/"
alias sinst="sudo apt install -y"
alias sup="sudo apt update"
alias supg="sudo apt upgrade"
# alias ct=bat
alias trm="tree -m"
alias tra="tree -a"
alias ls="exa"
alias lsa="exa -la"
alias fet=nerdfetch
alias v=$EDITOR
#
# dir
alias mtd="cd /mnt/d/Proyectos/Dev"
alias mtc="cd /mnt/c/"
alias mlinux="cd $HOME"
#
# Rust alias
alias rustc="$HOME/.cargo/bin/rustc"
alias rustd="$HOME/.cargo/bin/rustdoc"
alias rustf="$HOME/.cargo/bin/rustfmt"
alias rustg="$HOME/.cargo/bin/rust-gdb"
alias rustll="$HOME/bin/rust-lldb"
alias rustup="$HOME/bin/rustup"
alias cargo="$HOME/.cargo/bin/cargo"
alias cargoc="$HOME/.cargo/bin/cargo-clippy"
alias cargof="$HOME/.cargo/bin/cargo-fmt"
alias cargo-m="$HOME/.cargo/bin/cargo-miri"
alias clip-dr="$HOME/.cargo/bin/clippy-driver"
alias rls="$HOME/.cargo/bin/rls"
#
# Anaconda
alias cinit="conda activate"
alias cdesac="conda deactivate"
alias _r="conda activate r-env"
alias tfl="conda activate tenser-flow-env"
alias cuda="conda activate cuda-env"
#
# Navegación
alias ..="cd .."
alias ...="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."
#
#
alias grp="grep -E --color 'Mem|Cache|Swap' /proc/meminfo"
# Proceso consumiendo mas memoria
alias psmem="ps auxf | sort -nr -k 4"
alias psmem10="ps auxf | sort -nr -k 4 | head -10"
#
# Proceso consumiendo mas CPU
alias pscpu="ps auxf | sort -nr -k 3"
alias pscpu10="ps auxf | sort -nr -k 3 | head -10"
#
# Git
alias gaddu="git add -u"
alias gadd="git add ."
alias gsta="git status"
alias gremote="git remote add origin"
alias gbranch="git branch"
alias gcheck="git checkout"
alias gcl="git clone"
alias gcm="git commit -m"
alias gft="git fetch"
alias gpll="git pull origin"
alias gpsh="git push origin"
alias gtg="git tag"
alias gtga="git tag -a"
#
# Errores (mensajes)
alias jctl="journalctl -p 3 -xb"
#
# Cambiar Shell
set mensaje "Listo, cerrar sesión"
alias _zsh="sudo chsh $USER -s /bin/zsh && echo '$mensaje'"
alias _bash="sudo chsh $USER -s /bin/bash && echo '$mensaje'" 
alias _fish="sudo chsh $USER -s /bin/fish && echo '$mensaje'"
#
# >>>> Terminando Alias >>>>

# >>>> Funciones >>>>
#
# --- Obteniendo cache de los colores ---
# cat ~/.cache/wal/sequences &
# --- Funcion para cambio de colores en la terminal ---
function colores
    wal -n -i "$argv" --backend colorz
end
#
# Backup de archivos
function backup --argument filename
    cp $filename $filename.bak
end
#
# >>>> Terminan Funciones >>>>
