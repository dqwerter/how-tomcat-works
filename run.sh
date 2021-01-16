LIB_PATH=lib/*
WEB_ROOT=webroot
SOURCE_PATH=src/main/java

if [[ "$1" -eq "cleanall" ]] ; then
    rm $SOURCE_PATH/ex*/*.class
elif [ -z "$2" ] ; then
    echo "Usage: $0 [ex directory to run] [Class to run]"
elif [ -n "$2" ]; then
    echo "[run.sh] Compiling servlets in dir $WEB_ROOT"
    javac -classpath "$LIB_PATH" $WEB_ROOT/*.java
    echo "[run.sh] Compiling $SOURCE_PATH/ex$1/$2.java"
    javac -classpath "$LIB_PATH:$SOURCE_PATH" $SOURCE_PATH/ex$1/$2.java
    echo "[run.sh] Running ex$1.$2"
    java -cp "$LIB_PATH:$SOURCE_PATH:." ex$1.$2
fi
