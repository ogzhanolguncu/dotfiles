function docker-stop-all
    set -l containers (docker ps -q)
    if test -z "$containers"
        echo "No running containers found"
        return 0
    end

    docker stop $containers
    echo "All containers stopped"
end
