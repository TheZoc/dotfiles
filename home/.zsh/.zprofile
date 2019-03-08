# Read Prezto original file
source "${ZDOTDIR}/.zprezto/runcoms/zprofile"

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

#
# Setup default Homebrew Cask install directory (macOS Specific)
#
if [[ "$OSTYPE" == "darwin"* ]]; then
    export HOMEBREW_CASK_OPTS="--appdir=/Applications"
fi

#
# Initialize rbenv
#
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

