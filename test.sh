commitList=`git log --format=%B ca40...695b60`
while IFS= read -r line; do
    if [ ${#line} -ge 5 ] && [ ${#line} -eq 0]; then echo "line '$line' is greater than 5 chars"
    else echo "line '$line' is long enough"
    fi
done <<< "$commitList"