# unity-vim-tmux
My integration of vim and tmux as editor for Unity  (based on tmuxinator)

### Requirements
- tmux
- tmuxinator
- vim8/nvim

### Install
- Copy `unity.yml` tmuxinator configuration to `~/.config/tmuxinator/
- Copy `VimRunner.sh` script to Unity Assets/ folder or subfolder or other system directory
- In Unity: `Edit` --> `Preferences` --> `External Tools` --> `External Script Editor` and select `VimRunner.sh`

### Tests
Tested on Ubunut 18.04, zsh shell, Unity 2019.3
