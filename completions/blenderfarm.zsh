if [[ ! -o interactive ]]; then
    return
fi

compctl -K _blenderfarm blenderfarm

_blenderfarm() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(blenderfarm commands)"
  else
    completions="$(blenderfarm completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
