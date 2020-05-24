#! /bin/sh
#
# Travis CI script for use on every-commit:
#  - build and install Calamares
#
test -n "$BUILDDIR" || { echo "! \$BUILDDIR not set" ; exit 1 ; }
test -n "$SRCDIR" || { echo "! \$SRCDIR not set" ; exit 1 ; }

test -d $BUILDDIR || { echo "! $BUILDDIR not a directory" ; exit 1 ; }
test -d $SRCDIR || { echo "! $SRCDIR not a directory" ; exit 1 ; }
test -f $SRCDIR/CMakeLists.txt || { echo "! Missing $SRCDIR/CMakeLists.txt" ; exit 1 ; }

cd $BUILDDIR || exit 1

section() {
echo "###"
echo "### $1"
echo "###"
pwd -P
df -h
}

section "cmake $CMAKE_ARGS $SRCDIR"
cmake $CMAKE_ARGS $SRCDIR || { echo "! CMake failed" ; exit 1 ; }

section "ninja"
ninja -j2 || { echo "! ninja recheck" ; pwd -P ; df -h ; ninja -v -j1 ; echo "! Nija failed" ; exit 1 ; }

section "ninja install"

install_debugging() {
	ls -la $( find "$1" -type f -name '*.so' )
}

echo "# Build results"
install_debugging "$BUILDDIR"

echo "# Install"
DESTDIR=/build/INSTALL_ROOT
mkdir -p "$DESTDIR"

if DESTDIR="$DESTDIR" ninja install -v  ;
then
	echo "# .. install OK"
	result=true
else
	echo "# .. install failed"
	result=false
fi


section "Install results"
install_debugging "$DESTDIR"

$result || { echo "! Install failed" ; exit 1 ; } # Result of make install, above
