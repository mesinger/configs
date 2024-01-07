function install_if_not_present
    set command_name $argv[1]
    set code $argv[2]

    if not command -v $command_name >/dev/null 2>&1
        echo "Installing $command_name"
        eval $code
    else
        echo "$command_name is already installed"
    end
end

function fzf-history-cp
    history | string trim -c 2- | fzf --exact +s +m --tac | pbcopy
end

function git-push-set-upstream
    set -l current_branch (git rev-parse --abbrev-ref HEAD)

    if not test -n "$current_branch"
        echo "No current branch found"
        return 1
    end

    switch $argv[1]
        case --force -f
            echo "Force pushing to $current_branch..."
            git push --set-upstream origin $current_branch --force
        case '*'
            echo "Pushing to $current_branch..."
            git push --set-upstream origin $current_branch
    end
end

function nvm
    set -l arg $argv
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $arg
end
