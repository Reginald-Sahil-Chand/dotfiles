# Created on the 09th of June 2023
# --------------------------------

# Configurations from the Microsoft PowerShell Documentation
# Website: "https://learn.microsoft.com/en-us/powershell/"

# Check if the PowerShell Profile Exists, if not then create one
if (!(Test-Path -Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force
}

############################################################################################

# Custom Powershell Configurations
# ---------------------------------

# Configuration of Font
# ---------------------

# For the themes to work properly install a "Nerd Font". Recommened font is FiraCode Nerd Font
# To install a Nerd Font, visit "https://www.nerdfonts.com/font-downloads"
# And install it on your system and based on the terminal you are using change the default font to the new installed font

# Configurations for Starship Prompt
# ----------------------------------

# Install Starship Prompt
# -----------------------

# Install using winget (Recommended)
# winget install --id Starship.Starship

# Install using chocolatey
# choco install starship

# Use this command if you havent added starship prompt aka "C:\Program Files\starship\bin" to the environment variables "path"
# Invoke-Expression (&"C:\Program Files\starship\bin\starship" init powershell)

# Use this command if you have added the "C:\Program Files\starship\bin" to the environment variables "path"
# Invoke-Expression (&starship init powershell)

# To use starship prompt preset follow the below steps
# ----------------------------------------------------

# "starship preset pastel-powerline -o ~/.config/starship.toml" will directly not work in powershell
# ** Instead follow this **
# Step 1. Open Powershell using Windows Terminal
# Step 2. Paste the following code, "New-Item -ItemType Directory -Path $HOME\.config", this will create a new file in the home directory named ".config"
# Step 3. Paste the following code to use "Pastel Powerline Preset", "starship.exe preset pastel-powerline -o $HOME\.config\starship.toml", note that this command will work if you have added you starship path to the environment variables "path", if not first add it to environment variables "path" as mentioned above or use the full path as "C:\Program Files\starship\bin/starship.exe preset pastel-powerline -o $HOME\.config\starship.toml", "Paste it in the Windows PowerShell Shell".
# Step 4. To get more presets you can visit "https://starship.rs/presets/" and choose one and follow the above steps or create you own.

# Configurations for Oh-My-Posh Prompt
# ------------------------------------

# Install oh-my-posh
# ------------------

# Install using winget
# winget install oh-my-posh 

# Custom Install
# Visit "https://ohmyposh.dev/"

# Add the following to the end of your PowerShell profile file to set the paradox theme. (Replace paradox with the theme of your choice.)
# To get themes, go to the following website, url, "https://ohmyposh.dev/docs/themes"
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\paradox.omp.json" | Invoke-Expression
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\atomic.omp.json" | Invoke-Expression

# Configurations for Terminal Icons
# ---------------------------------

# Install Terminal Icons
# ----------------------

# Install-Module -Name Terminal-Icons -Repository PSGallery

# Usage
# -----

# Paste the below code to load in your PowerShell profile ($PROFILE) to  load it everytime powershell executes. "Microsoft.PowerShell_profile.ps1" the code should be pasted in a file like shown. Funfact the comment you are reading is from the same mentioned file. Paste the folowing code to load it

# Import-Module -Name Terminal-Icons
# To access the readme file, paste the following code, "Get-Item ./README.md"

# To View the files and directories you can use the following commands.
# 1. "dir" (Default in PowerShell)
# 2. "ls" (Install the PowerShell App from Microsoft Store and or Default in PowerShell)
# 3. "Get-ChildItem"
# All of these command displays the same prompt.

# To view your files and folders differently use the following commands and choose your preference.
# 1. "Get-ChildItem | Format-List"
# 2. "Get-ChildItem | Format-Wide"

# Load Terminal Icons
Import-Module -Name Terminal-Icons

