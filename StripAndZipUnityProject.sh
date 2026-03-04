for PROJECT_DIR in "$@"
do
    cd "$PROJECT_DIR"
    PROJECT_NAME=$(basename "$PROJECT_DIR")
    OUTPUT_FILE="$(dirname "$PROJECT_DIR")/${PROJECT_NAME}.zip"
    
    # Remove old zip if it exists
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
        -x "*.csproj" -x "*.sln" -x "*.userprefs" \
        -x "*.suo" -x "*.user" -x ".DS_Store"
    
    open -R "$OUTPUT_FILE"
done
