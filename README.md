# Dotfiles Repository
This repository contains my personal dotfiles.

## Getting Started
To use these dotfiles, you will need to have Git and Zsh installed on your system.

1. Clone the repository to your local machine:
```console
git clone https://github.com/your-username/dotfiles.git
```

2. Move the Git configuration file to your home directory:
```console
cp dotfiles/.gitconfig ~/
```

3. Move the Zsh profile file to your home directory:
```console
cp dotfiles/.zshrc ~/
```

4. Restart your terminal for changes to take effect.

## Git Configuration

The `.gitconfig` file contains my personal Git configurations, aliases, and settings. Feel free to modify or remove them to suit your needs.

## Zsh Profile
The `.zshrc` file contains my personal Zsh configurations, aliases, and functions. Again, feel free to modify or remove them to suit your needs.

### Zsh Setup

To use my .zshrc file. Follow these setups:

1. First Install the <u>Oh-My-Zsh</u>. 
```console
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

2. Install <u>Zsh Syntax Highlighting</u>. 
```console
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

3. Install <u>Zsh Auto Suggestions</u>.
```console
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

4. Restart your terminal and <u>done</u>!

## Contributing

If you find any issues or have suggestions for improvement, feel free to open an issue or pull request.

