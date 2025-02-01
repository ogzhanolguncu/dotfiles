function killport
    if test -z "$argv[1]"
        echo "Usage: killport <port_number>"
        return 1
    end

    set -l pid (lsof -t -i:$argv[1])
    if test -z "$pid"
        echo "No process found on port $argv[1]"
        return 1
    end

    kill -9 $pid
    echo "Killed process on port $argv[1]"
end
