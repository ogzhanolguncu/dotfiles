function down
    set -l target $argv[1]
    if test -z "$target"
        set target 1
    end

    set -l dirs (ls -d */ 2>/dev/null)
    if test (count $dirs) -eq 0
        echo "No subdirectories found"
        return 1
    end

    if test $target -gt (count $dirs)
        echo "Not enough subdirectories"
        return 1
    end

    cd $dirs[$target]
end
