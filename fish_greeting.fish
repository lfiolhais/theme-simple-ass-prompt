# Set global color styles, for example:
#
# function simple_ass_prompt_error
#   set_color -o red
# end
#
# function simple_ass_prompt_normal
#   set_color normal
#

function fish_greeting
  if test -n "$simple_ass_prompt_greeting"
    echo $simple_ass_prompt_greeting
  else
    echo 'Where the hell is Science?!'
  end
end
