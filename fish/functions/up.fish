function up
    set -l num $argv[1]
    if test -z "$num"
        set num 1
    end
    for i in (seq $num)
        cd ..
    end
end
