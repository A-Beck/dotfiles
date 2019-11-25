#! /bin/bash

# edit this if you have your dotfiles directory someplace else

your_dotfile_dir=~/.dotfiles

#### Do not edit below this point

DOTFILES_DIR="$( readlink --canonicalize ${your_dotfile_dir} )"

if [[ "X$( which stow )" == "X" ]]; then
    echo "ERROR: GNU Stow is not installed"
    exit 1
fi

#  Find all directories under ~/dotfiles, only get dir name (i.e 'bash')
#+ and run stow against them. exclude the repos '.git' dir

if [[ -d "${DOTFILES_DIR}" ]] ;  then
    pushd "${DOTFILES_DIR}" > /dev/null
    find "${DOTFILES_DIR}" \
        -maxdepth 1 \
        -mindepth 1 \
        ! -name .git \
        -type d \
        -printf "%f\n" | xargs stow
    popd > /dev/null
else
    echo "ERROR: dotfiles directory ${DOTFILES_DIR} does not exist"
    exit 1
fi

# Set mode for ~.shh/config
chmod 600 "${DOTFILES_DIR}/ssh/.ssh/config" || echo 'Please set ssh configuration files to have correct file mode'
