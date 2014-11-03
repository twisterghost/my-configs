# Custom prompt. Shows a green colon if the previous command exited properly.
# Shows a red colon otherwise.
function custom-prompt {

  EXITSTATUS="$?"
  BOLD="\[\033[1m\]"
  RED="\[\033[1;31m\]"
  GREEN="\[\e[32;1m\]"
  BLUE="\[\e[34;1m\]"
  OFF="\[\033[m\]"

  PROMPT="\h#\w"

  if [ "${EXITSTATUS}" -eq 0 ]
  then
     PS1="${PROMPT}${BOLD}${GREEN}:${OFF} "
  else
     PS1="${PROMPT}${BOLD}${RED}:${OFF} "
  fi

  PS2="${BOLD}and then... ${OFF} "
}

PROMPT_COMMAND=custom-prompt
