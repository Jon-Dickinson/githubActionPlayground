commitList=`git log --format=%B ca40...a744814009e`
flag=false
while IFS= read -r line; do
    if [ ${#line} -ge 5 ]; then 
        echo "line '$line' is greater than 5 chars"
    elif [ -z ${line} ]; then
        echo "line '$line'  is empty"
    else 
        echo "line '$line' is not long enough, setting the flag to true!"
        flag=true
    fi
done <<< "$commitList"
echo $flag
if [ "$flag" = true ]; then
    echo "do the curl command"
fi