# Colors
set normal (set_color normal)
set magenta (set_color magenta)
set purple (set_color purple)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Status Chars
set __fish_git_prompt_char_dirtystate '!'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_cleanstate '✓'

function __simple_ass_prompt_parse_git_branch_state -d "Display the state of the branch"
  git update-index --really-refresh -q 1> /dev/null

  # Check for changes to be commited
  if git_is_touched
    echo -n "$__fish_git_prompt_char_cleanstate"
  else
    echo -n "$__fish_git_prompt_char_dirtystate"
  end

  # Check for untracked files
  set git_untracked (command git ls-files --others --exclude-standard 2> /dev/null)
  if [ -n "$git_untracked" ]
    echo -n "$__fish_git_prompt_char_untrackedfiles"
  end

  # Check for stashed files
  if git_is_stashed
    echo -n "$__fish_git_prompt_char_stashstate"
  end

  # Check if branch is ahead, behind or diverged of remote
  git_ahead
end


function __simple_ass_prompt_git -d "Display the actual git branch"
  set -l ref
  if git_is_repo
    printf 'on '
    set_color purple

    set git_branch (command git symbolic-ref --quiet --short HEAD 2> /dev/null; or git rev-parse --short HEAD 2> /dev/null; or echo -n '(unknown)')

    printf '%s ' $git_branch

    set state (__simple_ass_prompt_parse_git_branch_state)
    set_color 0087ff
    printf '[%s]' $state

    set_color normal
  end
end

function __simple_ass_prompt_get_user -d "Print the user"
  if test $USER = 'root'
    set_color red
  else
    set_color d75f00
  end
  printf '%s' (whoami)
end


function fish_prompt
  # Logged in user
  __simple_ass_prompt_get_user
  set_color normal
  printf ' at '

  # Machine logged in to
  set_color af8700
  printf '%s' (hostname|cut -d . -f 1)
  set_color normal
  printf ' in '

  # Path
  set_color $fish_color_cwd
  printf '%s ' (prompt_pwd)
  set_color normal

  # Git info
  __simple_ass_prompt_git

  # Line 2
  echo
  if test $VIRTUAL_ENV
    printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
  end
  printf '↪ '
  set_color normal
end
