# Starship
Invoke-Expression (&starship init powershell)

# Zoxide (better "cd" command)
Invoke-Expression (& { (zoxide init powershell | Out-String) })
Set-Alias -Name cd -Value z -Option AllScope

# Eza (better "ls" command)
Function DefaultEza {eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions --tree --level=2 $($args)}
Set-Alias -Name ls -Value DefaultEza

# Bat (better "cat" command)
Function DefaultBat {bat --color=always --line-range :300 --paging=always $($args)}
Set-Alias -Name cat -Value DefaultBat