#!/bin/bash

tfvars_suffix=$TFVARS_FILES_SUFFIX
working_directory=$WORKING_DIRECTORY
output_file=$OUTPUT_FILE_NAME
blank_line=$BLANK_LINE
print_result=$PRINT_RESULT

# Move to the working_directory
cd $working_directory || exit 2

# Remove the output file if it already exists
rm -f "${output_file}"

# Concatenate the files into the output file
for file in *"$tfvars_suffix".tfvars;
do
    if [ -f "$file" ]; then
        echo "Concatenating $file..."
        cat "$file" >> "$output_file"
        if $blank_line = true; then
            echo "" >> "$output_file"  # Add a blank line between the files
        fi
    else
        echo "No files found with suffix $tfvars_suffix"
        exit 2
    fi
done
echo "Files successfully concatenated into $output_file"

if $print_result = true; then
    echo "Contents of $output_file:"
    cat "$output_file"
fi

exit 0
