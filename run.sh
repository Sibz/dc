folder="repo"

repo="magnitudo_machina"
url="https://github.com/#{GIT_ORG}/${GIT_REPO}"
branch="mm-dev"

git config \
    --global \
    url."https://rustanigans:${GIT_PAT}@github.com/".insteadOf \
    "https://github.com/"

if [ -d "${folder}" ] ; then
    echo "Folder ${folder} exists"
else
    echo "Folder ${folder} does not exist"
    git clone -b ${GIT_BRANCH} "${url}" "${folder}"
fi

if cd ${folder} ; then
    git fetch origin
    git pull
    cargo build -r
    echo "Removing old binary"
    rm -f /output/${BIN_NAME}
    mv target/release/${BIN_NAME} /output/${BIN_NAME}
    chmod +x /output/${BIN_NAME}
else
    echo "Failed to cd into ${folder}"
fi