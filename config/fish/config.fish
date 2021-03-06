# Useful aliases {{{

alias c 'clear'
alias hl 'less -R'
alias paththis 'set PATH (pwd) $PATH'

# shorten often used commands
alias g 'git'

alias ef 'vim ~/.config/fish/config.fish'
alias ea 'vim ~/.config/awesome/rc.lua'
alias eg 'vim ~/.gitconfig'
alias et 'vim ~/.tmux.conf'
alias ev 'vim ~/.vim/vimrc'
alias be 'bundle exec'

alias tma 'tmux attach -t'
alias tmn 'tmux new -s'

alias ovd 'overcast digitalocean'
alias ovr 'overcast run'

# USER: set important paths here to put at the front of $PATH if you want to override system-wide settings
set -g -x fish_greeting ''
set -g -x EDITOR vim
set -g -x XDG_CONFIG_HOME ~/.config
set -g -x COMMAND_MODE unix2003
set -g -x RUBYOPT rubygems
set -g -x DOCKER_HOST tcp://localhost:4243


alias ...   'cd ../..'
alias ....  'cd ../../..'
alias ..... 'cd ../../../..'

alias md 'mkdir -p'

alias l1 'tree --dirsfirst -ChFL 1'
alias l2 'tree --dirsfirst -ChFL 2'
alias l3 'tree --dirsfirst -ChFL 3'

alias ll1 'tree --dirsfirst -ChFupDaL 1'
alias ll2 'tree --dirsfirst -ChFupDaL 2'
alias ll3 'tree --dirsfirst -ChFupDaL 3'

alias l  'l1'
alias ll 'll1'

set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
# set __fish_git_prompt_showdirtystate 'yes'
# set __fish_git_prompt_showstashstate 'yes'
# set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
# set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'


function fish_prompt
  set last_status $status

  # echo

  # set_color magenta
  # printf '%s' (whoami)
  # set_color normal
  # printf ' at '

  # set_color yellow
  # printf '%s' (hostname|cut -d . -f 1)
  # set_color normal
  # printf ' in '

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_git_prompt)

  set_color normal
end

overcast aliases  | .
