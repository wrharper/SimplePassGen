# SimplePassGen

SimplePassGen is a lightweight, offline PowerShell password generator that uses Windows’ cryptographically secure random number generator. It supports toggles for symbols, numbers, uppercase, lowercase, and custom length.

All passwords are generated locally on your machine and never transmitted anywhere.

---

## Features

- Cryptographically secure randomness  
- Fully offline  
- Customizable length  
- Optional symbols  
- Toggles for uppercase, lowercase, and numbers  
- Works on all modern Windows systems  

---

## Usage

Run the script from PowerShell:

```powershell
.\SimplePassGen.ps1
```

## Examples

- Length
.\SimplePassGen.ps1 -Length 64
- Include Symbols
.\SimplePassGen.ps1 -Symbols
- No Numbers
.\SimplePassGen.ps1 -NoNumbers
- No Uppercase or Numbers
.\SimplePassGen.ps1 -NoUpper -NoNumbers
- Numbers Only (No Uppercase or Lowercase)
.\SimplePassGen.ps1 -NoUpper -NoLower
