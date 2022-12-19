#!/usr/bin/env bash

init_check() {
    if [[ -z ${DOT_REPO} ]]; then
        #initial setup initial_setup else
        initial_setup
    else
        manage
    fi
}

initial_setup() {
    echo -e "First time cloned, adding env variable."
    read -p "Enter dotfiles repository URL : " -r DOT_REPO
    add_env "$DOT_REPO"
    echo -e "Added successfully!"
    echo -e "Run \"source ~/.zshrc\""
}

goodbye() {
    printf "\a\n%s\n" "${BOLD}Thank you for your time.${RESET}"
}

add_env() {
    # export environment variables
    echo -e "Exporting env variables..."

    current_shell=$(basename "$SHELL")
    if [[ $current_shell == "zsh" ]]; then
        echo "export DOT_REPO=$1" >> "$HOME"/.zshrc
    elif [[ $current_shell == "bash" ]]; then
        echo "export DOT_REPO=$1" >> "$HOME"/.bashrc
    else
        echo "Couldn't export DOT_REPO."
        echo "Consider exporting them manually".
        exit 1
    fi
    echo -e "Configuration for SHELL: $current_shell has been updated."
}

manage() {
    while :
    do
        echo -e "\n[1] Show diff"
        echo -e "[2] Overwrite dot files"
        echo -e "[3] Copy from dot files repo"
        echo -e "[4] Push new dot files"
        echo -e "[q/Q] Quit Session"
        # Default choice is [1]
        read -p "What do you want me to do ? [1]: " -n 1 -r USER_INPUT
        # See Parameter Expansion
        USER_INPUT=${USER_INPUT:-1}
        case $USER_INPUT in
            [1]* ) diff_dotfiles;;
            [2]* ) ow_dotfiles;;
            [3]* ) cp_dotfiles;;
            [4]* ) push_dotfiles;;
            [q/Q]* ) exit;;
            * )     printf "\n%s\n" "Invalid Input, Try Again";;
        esac
    done
}

ow_dotfiles() {
    file='dir_lists.txt'
    while read line; do 
        if [[ -f $line ]]; then
            \cp $HOME/$line $PWD/configs
        else
            \cp -R $HOME/$line $PWD/configs
        fi
    done < $file
    echo -e "\nOverwriting Successful!"
}

diff_dotfiles() {
    file='dir_lists.txt'
    while read line; do
        echo "Line : $line"
        if [[ -f $line ]]; then
            diff -qrs $HOME/$line $PWD/configs/$line
        else     
            directoryName=${line#*/}
            diff -qrs $HOME/$line $PWD/configs/$directoryName
        fi 
    done < $file
}

cp_dotfiles() {
    file='dir_lists.txt'
    while read line; do 
        if [[ -f $line ]]; then
            \cp $PWD/$line $HOME
        else
            directoryName=${line#*/}
            \cp -R $PWD/configs/$directoryName $HOME/.config
        fi
    done < $file
    echo -e "\nCopied Dot Files from Repo Successful!"
}

push_dotfiles() {
    echo -e "\nFollowing dotfiles changed : "
    for file in "${file_arr[@]}"; do
        echo "$file"
        cp "${HOME}/$file" "${HOME}/${DOT_DEST}/$(basename "${DOT_REPO}")"
    done

    dot_repo="${HOME}/${DOT_DEST}/$(basename "${DOT_REPO}")"
    git -C "$dot_repo" add -A

    echo -e "Enter Commit Message (Ctrl + d to save):"
    commit=$(</dev/stdin)

    git -C "$dot_repo" commit -m "$commit"

    # Run Git Push
    git -C "$dot_repo" push
}

init_check
