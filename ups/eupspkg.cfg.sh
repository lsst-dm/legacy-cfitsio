# EupsPkg config file. Sourced by 'eupspkg'

NJOBS=1
MAKE_BUILD_TARGETS="all shared fpack funpack"
if [[ $(uname) != Darwin ]]; then
	export LIBS=`curl-config --libs | sed -e s/-L/-Wl,-rpath-link=/ -e s/\ -lcurl//`
fi
CONFIGURE_OPTIONS="--prefix=$PREFIX --libdir=$PREFIX/lib"
