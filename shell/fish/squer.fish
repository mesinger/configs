function onepwd
    set -l id (op item ls | fzf | string split ' ' | read -l)
    eval "op item get $id --field password | tr -d '\n' | pbcopy"
    echo "Copied to clipboard"
end

function k-fwd-sync
  set -l pod_id (kubectl get pods -n backend | grep "sync" | awk '{print $1}' | tr -d '\n')
  eval "kubectl port-forward -n backend $pod_id 38080:8080"
end

function k-fwd-be
  set -l pod_id (kubectl get pods -n backend | grep "backend" | grep -v "sync" | awk '{print $1}' | tr -d '\n')
  eval "kubectl port-forward -n backend $pod_id 38080:8080"
end

