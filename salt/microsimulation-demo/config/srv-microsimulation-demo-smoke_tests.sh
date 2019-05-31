#!/bin/bash
set -ex

echo "Loading homepage..."
[ $(curl -v http://localhost:8080/ -o /dev/null -w '%{http_code}') == 200 ]

echo "Loading about page..."
[ $(curl -v http://localhost:8080/about -o /dev/null -w '%{http_code}') == 200 ]

echo "Loading issues page..."
[ $(curl -v http://localhost:8080/collections -o /dev/null -w '%{http_code}') == 200 ]

echo "Loading each issue page..."
[ $(curl -v http://localhost:8080/collections/1-1/volume-1-1-autumn-2007 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/collections/2-1/volume-2-1-spring-2009 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/collections/2-2/volume-2-2-autumn-2009 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/collections/3-1/volume-3-1-spring-2010 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/collections/3-2/volume-3-2-autumn-2010 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/collections/4-1/volume-4-1-spring-2011 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/collections/4-2/volume-4-2-autumn-2011 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/collections/5-1/volume-5-1-spring-2012 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/collections/5-2/volume-5-2-autumn-2012 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/collections/7-1/volume-7-1-spring-2014 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/collections/8-1/volume-8-1-spring-2015 -o /dev/null -w '%{http_code}') == 200 ]

echo "Loading article pages..."
[ $(curl -v http://localhost:8080/articles/00001 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00002 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00003 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00004 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00005 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00006 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00007 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00008 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00009 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00010 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00011 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00012 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00013 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00014 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00015 -o /dev/null -w '%{http_code}') == 200 ]
# 00016 currently is not valid
# [ $(curl -v http://localhost:8080/articles/00016 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00017 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00018 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00019 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00020 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00021 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00022 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00023 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00024 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00025 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00026 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00027 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00028 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00029 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00030 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00031 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00032 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00033 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00034 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00035 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00036 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00037 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00038 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00039 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00040 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00041 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00042 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00043 -o /dev/null -w '%{http_code}') == 200 ]
# 00044 currently is not valid
# [ $(curl -v http://localhost:8080/articles/00044 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00045 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00046 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00047 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00048 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00049 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00050 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00051 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00052 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00053 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00054 -o /dev/null -w '%{http_code}') == 200 ]

[ $(curl -v http://localhost:8080/articles/00063 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00064 -o /dev/null -w '%{http_code}') == 200 ]
# 00065 currently is not valid
# [ $(curl -v http://localhost:8080/articles/00065 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00066 -o /dev/null -w '%{http_code}') == 200 ]
# 00067 currently is not valid
# [ $(curl -v http://localhost:8080/articles/00067 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00068 -o /dev/null -w '%{http_code}') == 200 ]
# 00069 currently is not valid
# [ $(curl -v http://localhost:8080/articles/00069 -o /dev/null -w '%{http_code}') == 200 ]
# 00070 currently is not valid
# [ $(curl -v http://localhost:8080/articles/00070 -o /dev/null -w '%{http_code}') == 200 ]
# 00071 currently is not valid
# [ $(curl -v http://localhost:8080/articles/00071 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00072 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00073 -o /dev/null -w '%{http_code}') == 200 ]

# 00091 currently is not valid
# [ $(curl -v http://localhost:8080/articles/00091 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00092 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00093 -o /dev/null -w '%{http_code}') == 200 ]
# 00094 currently is not valid
# [ $(curl -v http://localhost:8080/articles/00094 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00095 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00096 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00097 -o /dev/null -w '%{http_code}') == 200 ]


[ $(curl -v http://localhost:8080/articles/00110 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00111 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00112 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00113 -o /dev/null -w '%{http_code}') == 200 ]
[ $(curl -v http://localhost:8080/articles/00114 -o /dev/null -w '%{http_code}') == 200 ]

echo "Loading images..."
[ $(curl -v http://localhost:8080/iiif/2/00001%2Fijm-00001-fig1.tif/full/full/0/default.jpg -o /dev/null -w '%{http_code}') == 200 ]
