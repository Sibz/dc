folder="repo"
repo="magnitudo_machina"
url="https://github.com/rustanigans/${repo}"
branch="mm-dev"

#pat=$(<pat)

pat="${GIT_PAT}"

git config \
    --global \
    url."https://rustanigans:${pat}@github.com/".insteadOf \
    "https://github.com/"

if [ -d "${folder}" ] ; then
    echo "Folder ${folder} exists"
else
    echo "Folder ${folder} does not exist"
    git clone -b ${branch} "${url}" "${folder}"
fi

if cd ${folder} ; then
    git fetch origin
    git pull
    cargo build -r
    echo "Removing old binary"
    rm -f /output/${repo}
    mv target/release/${repo} /output/${repo}
else
    echo "Failed to cd into ${folder}"
fi