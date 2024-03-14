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

function ksecret
    if test (count $argv) -ne 2
        echo "Usage: ksecret <namespace> <secret-name>"
        return 1
    end

    set namespace $argv[1]
    set secret_name $argv[2]

    kubectl get secret $secret_name -n $namespace --template={{.data}} -o json | jq '.data'
end
