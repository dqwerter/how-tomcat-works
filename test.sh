BASE_URL=http://localhost:8080

echo "[$0] Testing ${BASE_URL}/index.html"
curl ${BASE_URL}/index.html

echo "[$0] Testing ${BASE_URL}/greetings.html"
curl ${BASE_URL}/greetings.html

echo "[$0] Testing ${BASE_URL}/servlet/PrimitiveServlet"
curl ${BASE_URL}/servlet/PrimitiveServlet


if [ -z "$1" ] ; then
    echo "[$0] Testing ${BASE_URL}/SHUTDOWN"
    curl ${BASE_URL}/SHUTDOWN
elif [[ "$1" -eq "noshutdown" ]] ; then
    echo "[$0] exit with no SHUTDOWN test."
fi
