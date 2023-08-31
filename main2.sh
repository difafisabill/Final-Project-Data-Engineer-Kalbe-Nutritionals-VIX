path="C:\DIFA\Data Engineering On Kalbe\Project\Data"
name_of_directory="Data"
filename_excel="daily_market_price.xlsx"
source_dir="/local/data/market"
target_dir="$path/$name_of_directory"

# Check if directory exists inside the path
if [ -d "$target_dir" ]; then
    echo "There is $name_of_directory Directory Exists!"

    # Copy file from source directory to target directory
    cp "$source_dir/$filename_excel" "$target_dir/"

    # Check if the copy was successful
    if [ $? -eq 0 ]; then
        echo "File Moved Successfully" > "$target_dir/log.txt"
    else
        echo "File Move Failed" > "$target_dir/log.txt"
    fi
else
    echo "$name_of_directory Directory Not Exists!"
    mkdir -p "$target_dir"
fi
