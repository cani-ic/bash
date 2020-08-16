#cfg .bashrc
if [ -e $HOME/.bashrc.bak ]; then
  echo 'no need to cfg bashrc'
else
  cp ~/.bashrc ~/.bashrc.bak
  cp -f bashrc ~/.bashrc
  source ~/.bashrc
fi

#cfg .vimrc
echo "begin to cfg vimrc..."
cp -f vimrc ~/.vimrc
echo "cfg vimrc done ^_^"
