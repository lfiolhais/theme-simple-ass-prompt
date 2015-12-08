# Configure greeting with:
#   -> set -g simple_ass_prompt_greeting MyGreeting

function fish_greeting
  if test -n "$simple_ass_prompt_greeting"
    echo $simple_ass_prompt_greeting
  else
    echo 'Where the hell is Science?!'
  end
end
