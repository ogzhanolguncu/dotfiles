function ports
    echo "Active ports:"
    lsof -i -P -n | grep LISTEN
end
