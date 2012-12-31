function die()
{
  echo "${@}"
  exit 1
}

for file in $HOME/.dotfiles/.[^.]*; do
  # Changes to the $HOME dir
  cd

  # Moves the existing dotfiles.
  if [[ ( -e `basename $file` ) || ( -h `basename $file`) ]]; then
    echo "`basename $file` has been renamed to `basename $file`.old"
    mv "`basename $file`" "`basename $file`.old" || die "Could not move `basename $file` to `basename $file`.old"
  fi
 
  # Creates symbolic links for each dot file found inside the .dotfiles dir 
  ln -s "${file} `basename ${file}`" 
done
