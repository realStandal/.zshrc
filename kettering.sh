# Initialize connection to Kettering's VPN
sudo openconnect --background --protocol=fortinet vpn.kettering.edu/employee

# Kill the VPN connection when the shell exits
trap "sudo pkill openconnect" EXIT

# Clear console after the user hits enter
# TODO: Can the VPN connection be done without polluting the terminal output?
read -r
clear
