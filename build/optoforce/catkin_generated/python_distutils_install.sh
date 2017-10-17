#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/d-lab/ExcavatorROS.git/src/optoforce"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/d-lab/ExcavatorROS.git/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/d-lab/ExcavatorROS.git/install/lib/python2.7/dist-packages:/home/d-lab/ExcavatorROS.git/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/d-lab/ExcavatorROS.git/build" \
    "/usr/bin/python" \
    "/home/d-lab/ExcavatorROS.git/src/optoforce/setup.py" \
    build --build-base "/home/d-lab/ExcavatorROS.git/build/optoforce" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/d-lab/ExcavatorROS.git/install" --install-scripts="/home/d-lab/ExcavatorROS.git/install/bin"
