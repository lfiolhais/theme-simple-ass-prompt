set __fish_status_prompt_char_failed '✘'

function fish_right_prompt
  set -l code $status

  set_color red
  if [ $code -eq 127 ]
    printf '%s' $__fish_status_prompt_char_failed
  end
end
