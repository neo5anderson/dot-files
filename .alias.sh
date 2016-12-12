# *********************************
# [Utils]
alias ls='ls -Gh'
alias ll='ls -l'
alias la='ls -a'
alias df='df -h'
alias du='du -h'
alias grep='grep --color=auto'

# *********************************
# [Thrid party]
alias ruby='ruby -w'
alias pip='pip --trusted-host pypi.douban.com'

alias ffplay='ffplay -autoexit'
alias getwin='rdesktop -D -f win -u neo'
# *********************************
# [Compile]
alias make='make -j4'
alias remake='make clean && make'
alias ndk-build='ndk-build -j4'

# -DCMAKE_BUILD_TYPE=Release
alias amake='cmake -DCMAKE_TOOLCHAIN_FILE=$ANDROID_CMAKE/android.cmake'
alias imake='cmake -DCMAKE_TOOLCHAIN_FILE=$IOS_CMAKE/ios.cmake -GXcode'

# *********************************
# [More cmd]
# remove colons
# replace higher level folder names with dashes
# indent graph three spaces
# replace first dash with a vertical bar
alias ltree="ls -R | grep ':$' | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias ipaddr='ifconfig en0 | grep "inet "; ifconfig en1 | grep "inet "'
alias dust='for i in `ls`; do du -s $i; done'
alias rmme='_this_target=`pwd`;cd ..;rm -rf $_this_target'
alias cdtmp='_tmp_target=/tmp/`date +%s`;mkdir $_tmp_target;cd $_tmp_target'
alias cdbuild='mkdir -p build; cd build'

