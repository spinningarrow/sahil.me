#!/usr/bin/env sh

PRIVATE_DIR="/home/private/"
PUBLIC_DIR="/home/public/"
BARE_REPO_NAME="sahil.me.git"

cd $PRIVATE_DIR
[ -d "${PRIVATE_DIR}sahil.me/" ] || git clone $BARE_REPO_NAME # cloned as 'sahil.me'

git --git-dir="${PRIVATE_DIR}sahil.me/.git/" --work-tree="${PRIVATE_DIR}sahil.me/" pull

# Copy files
for f in $(ls -a1 "${PRIVATE_DIR}sahil.me/")
do
	[ -f "${PRIVATE_DIR}sahil.me/${f}" ] && cp "${PRIVATE_DIR}sahil.me/${f}" "${PUBLIC_DIR}"
done