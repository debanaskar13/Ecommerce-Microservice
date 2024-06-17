
git submodule foreach --recursive '
    branch=$(git rev-parse --abbrev-ref HEAD)
    echo "Updating submodule in $(pwd) on branch $branch"
    git fetch
    git checkout $branch
    git pull origin $branch
'

git add .
git commit -m "Updated submodules to the latest commits"
git push origin main