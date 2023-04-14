message=$(date "+%Y-%m-%d %H:%M:%S")

git add .
git commit -m "$message"
# git commit -m "$(date "+%Y-%m-%d %H:%M:%S")"

git fetch hhnotes main && git merge hhnotes FETCH_HEAD
# or use below
# git pull hhnotes main

git push hhnotes main
#git push -u hhnotes main

mkdocs gh-deploy --force

##### windows
# git add .
# git commit -m "%date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2%"
# git fetch hhnotes main && git merge hhnotes FETCH_HEAD
# git push hhnotes main
# mkdocs gh-deploy --force