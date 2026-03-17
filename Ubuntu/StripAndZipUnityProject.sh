#!/bin/bash

for PROJECT_DIR in "$@"
do
    PROJECT_DIR="$(realpath "$PROJECT_DIR")"
    PROJECT_NAME="$(basename "$PROJECT_DIR")"
    OUTPUT_FILE="${PROJECT_DIR%/*}/${PROJECT_NAME}.zip"

    cd "$PROJECT_DIR" || exit

    [ -f "$OUTPUT_FILE" ] && rm "$OUTPUT_FILE"

    zip -r -q "$OUTPUT_FILE" . \
        -x "*/Library/*" -x "Library/*" \
        -x "*/Temp/*" -x "Temp/*" \
        -x "*/obj/*" -x "obj/*" \
        -x "*/Builds/*" -x "Builds/*" \
        -x "*/Logs/*" -x "Logs/*" \
        -x "*/.vs/*" -x ".vs/*" \
        -x "*/.vscode/*" -x ".vscode/*" \
        -x "*/.idea/*" -x ".idea/*" \
        -x "*/UserSettings/*" -x "UserSettings/*" \
        -x "*/Recordings/*" -x "Recordings/*" \
        -x "*/.plastic/*" -x ".plastic/*" \
        -x "*/.git/*" -x ".git/*" \
        -x "*.csproj" -x "*.sln" -x "*.userprefs" \
        -x "*.suo" -x "*.user" -x ".DS_Store"

    nautilus --select "$OUTPUT_FILE" 2>/dev/null || xdg-open "$(dirname "$OUTPUT_FILE")"
done

