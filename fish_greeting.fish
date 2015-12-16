# Configure greeting with:
#   -> set -g simple_ass_prompt_greeting MyGreeting

function fish_greeting
  set -q simple_ass_prompt_greeting; or set -l simple_ass_prompt_greeting 'Where the hell is Science?!'

  echo $simple_ass_prompt_greeting
end
