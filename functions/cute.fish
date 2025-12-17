function cute --description "Execute commands from markdown files"
    set -l cute_dir (set -q XDG_DATA_HOME; and echo $XDG_DATA_HOME; or echo $HOME/.local/share)/cute
    set -l cute_script "$cute_dir/cute"

    # Try to find the script from Fisher installation first
    set -l fisher_script (status --current-filename | xargs dirname)/../cute
    if test -f $fisher_script
        set cute_script $fisher_script
    else if not test -f $cute_script
        echo "cute: Downloading script..." >&2
        mkdir -p $cute_dir
        if not curl -fsSL https://raw.githubusercontent.com/ras0q/cute/main/cute -o $cute_script
            echo "cute: Failed to download script" >&2
            return 1
        end
    end

    sh -c ". $cute_script && cute \$@" -- $argv
end
