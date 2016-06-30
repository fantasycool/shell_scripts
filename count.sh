#! /bin/bash
for ((k=0; k <= 30; k++))
do

    if [ $k -lt 10 ]
    then
        echo "2016060${k} uv"
        cat '/Users/frio/Documents/forbidden.log' |grep -E "2016/06/0${k}"|grep "pageId=${1}"|grep -oE 'client.*?server'|uniq|wc -l
    else
        echo "201606${k} uv"
        cat '/Users/frio/Documents/forbidden.log' |grep -E "2016/06/${k}"|grep "pageId=${1}"|grep -oE 'client.*?server'|uniq|wc -l
    fi

    if [ $k -lt 10 ]
    then
        echo "2016060${k} pv"
        cat '/Users/frio/Documents/forbidden.log' |grep -E "2016/06/0${k}"|grep "pageId=${1}"|wc -l
    else
        echo "201606${k} pv"
        cat '/Users/frio/Documents/forbidden.log' |grep -E "2016/06/${k}"|grep "pageId=${1}"|wc -l
    fi
done
