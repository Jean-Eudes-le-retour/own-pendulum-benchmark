body_text=$1
echo $body_text
regex='github.com/([[[:alnum:]._-]+/[[:alnum:]._-]+)'
if [[ $body_text =~ $regex ]]
then
  user_repo="${BASH_REMATCH[1]}"
  echo "$user_repo"
else
  exit 1
  user_repo=""
fi
echo "USER_REPO=$user_repo" >> $GITHUB_ENV
