param(
    [int]$Length = 32,
    [switch]$Symbols,
    [switch]$NoUpper,
    [switch]$NoLower,
    [switch]$NoNumbers
)

# Build character set based on toggles
$charSet = ""

if (-not $NoLower)   { $charSet += "abcdefghijklmnopqrstuvwxyz" }
if (-not $NoUpper)   { $charSet += "ABCDEFGHIJKLMNOPQRSTUVWXYZ" }
if (-not $NoNumbers) { $charSet += "0123456789" }
if ($Symbols)        { $charSet += "!@#$%^&*()-_=+[]{};:,.<>?" }

if ($charSet.Length -eq 0) {
    Write-Error "Character set is empty. Enable at least one character category."
    exit
}

# Generate secure random bytes
$bytes = New-Object byte[] $Length
[System.Security.Cryptography.RandomNumberGenerator]::Create().GetBytes($bytes)

# Convert bytes to characters
$password = -join ($bytes | ForEach-Object { $charSet[ $_ % $charSet.Length ] })

Write-Output $password
