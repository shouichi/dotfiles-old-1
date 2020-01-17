export LANG='en_US.UTF-8'

export EDITOR=vim

# colorize ls
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31'

# the following chars are considered part of a word
export WORDCHARS='*?[]~=&;!#$%^(){}<>'

export PATH=$HOME/bin:$PATH

export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

if [[ "$OSTYPE" == "darwin"* ]]; then
	# use gnu utils
	export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH

	# use default ruby and gem without sudo
	export GEM_HOME=$HOME/.gem
	export PATH=$GEM_HOME/bin:$PATH

	if [ -d $HOME/.gem/ruby/2.3.0/bin ]; then
		export PATH=$HOME/.gem/ruby/2.3.0/bin:$PATH
	fi
fi

if [ -d $HOME/local/clang/bin ]; then
	export PATH=$HOME/local/clang/bin:$PATH
fi

if [ -d $HOME/local/go/bin ]; then
	export PATH=$HOME/local/go/bin:$PATH
fi

if [ -d $HOME/local/nodejs/bin ]; then
	export PATH=$HOME/local/nodejs/bin:$PATH
fi

if [ -d $HOME/local/hub/bin ]; then
	export PATH=$HOME/local/hub/bin:$PATH
fi

if [ -d $HOME/local/google-cloud-sdk/bin ]; then
	export PATH=$HOME/local/google-cloud-sdk/bin:$PATH
fi

if [ -d $HOME/local/android/tools/bin ]; then
	export ANDROID_HOME=$HOME/local/android
	export PATH=$HOME/local/android/tools/bin:$PATH
fi

if [ -d $HOME/local/flutter/bin ]; then
	export PATH=$HOME/local/flutter/bin:$PATH
fi

if [ -d $HOME/local/dart-sdk/bin ]; then
	export PATH=$HOME/local/dart-sdk/bin:$PATH
	export PATH=$HOME/.pub-cache/bin:$PATH
fi

if [ -d $HOME/local/dart-sdk/bin ]; then
	export PATH="$HOME/.cargo/bin:$PATH"
fi
