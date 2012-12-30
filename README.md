.dotifles
=========

##updating vim-creeper

```sh
# init vim creeper after clone
git submodule update --init --recursive
git submodule update --recursive

# update vim-creeper 
git submodule foreach 'git clean -xfd -- . && git pull origin master'
git submdoule update --recursive
```
