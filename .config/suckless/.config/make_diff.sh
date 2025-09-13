DIR_NAME="diffs"

LOG_MESSAGE=$(git log --format="%h %s" -n 1)
COMMIT_HASH=$(git log --format="%H" -n 1)

# Create storage directory if does not exists
if [ ! -d "$DIR_NAME" ]; then
	mkdir "$DIR_NAME"
	echo "Storage '$DIR_NAME' directory created."
fi


# Store diff
git diff HEAD~1 HEAD > "$DIR_NAME/$COMMIT_HASH.diff"

# Log that diff
echo $LOG_MESSAGE >> "$DIR_NAME/diffs.log"
