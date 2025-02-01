function my_ip
    set -l ip (curl -s https://ifconfig.me/)
    echo "Public IP: $ip"
end
