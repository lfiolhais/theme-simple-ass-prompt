set __fish_status_prompt_char_failed '✘'

function fish_right_prompt
  set -l code $status

  if test $code -eq 127
    set_color red
    printf '%s' $__fish_status_prompt_char_failed
  end

  set_color normal
end
