#
#

# Example on how to set ExecutionPolicy to allow power shell scripts
#Set-ExecutionPolicy -ExecutionPolicy Unrestricted  -Scope CurrentUser

# Command line configuration
param (
    [string]$source = "c:/tmp/src",
    [string]$dest = "c:/tmp/dest"
 )

# Display received params
write-output "recursive copy"
write-output "from : $source"
write-output "to : $dest"

# Log file path
$log_fpath=$(get-Date -UFormat copy_%Y%m%d_%H%M%S.log)

# Copy
robocopy "$source" "$dest" /e /Xo /log:"$log_fpath"
