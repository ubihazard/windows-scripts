# Disable Windows Firewall filtering
Set-NetFirewallProfile -Enabled False

# For private network only
Set-NetFirewallProfile -Profile Private -Enabled False

# For public network only
Set-NetFirewallProfile -Profile Public -Enabled False

# For domain network only
Set-NetFirewallProfile -Profile Domain -Enabled False
