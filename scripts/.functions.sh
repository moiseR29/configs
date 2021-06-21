genssh() {
  echo "Verify install ssh-key"
  if [ ! $(which ssh-keygen) ]; then
    echo "no tenes instalado ssh-keygen"
    exit 1
  fi

  ssh-keygen -f ~/.ssh/$1
}