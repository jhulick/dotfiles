
term_colors() {
  local fg bg

  for fg in 30 31 32 33 34 35 36 37; do
    for bg in 40 41 42 43 44 45 46 47; do
      echo -n -e "\e[${fg};${bg}m (${fg},${bg}) \e[0m"
    done
    echo
    for bg in 40 41 42 43 44 45 46 47; do
      echo -n -e "\e[1;${fg};${bg}m (${fg},${bg}) \e[0m"
    done
    echo
  done

  echo

  for fg in 30 31 32 33 34 35 36 37; do
    for bg in 40 41 42 43 44 45 46 47; do
      echo -n -e "\e[5m"
      echo -n -e "\e[${fg};${bg}m (${fg},${bg}) \e[0m"
    done
    echo
    for bg in 40 41 42 43 44 45 46 47; do
      echo -n -e "\e[5m"
      echo -n -e "\e[1;${fg};${bg}m (${fg},${bg}) \e[0m"
    done
    echo
  done
}

title() {
  printf '\e]2;%s\a' "$*"
}

