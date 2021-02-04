#!/bin/bash


# settings
temp_dir="/tmp"
output_dir="output"
log_level="fatal"


# default arguments settings
opt_fps=10
opt_duration_sec=5
opt_no_cutting=0
opt_optimal_static=0
opt_speed_times=1
opt_rotate_times=0
opt_save_clip=0
opt_verbose_log=0
arg_width=-1
arg_height=-1
arg_pixel_limit=720
arg_log=""
arg_palette_stats="full"
arg_palette_dither="sierra2_4a"
flt_crop=""


# console color
CRED="\033[1;31m"
CGREEN="\033[1;32m"
CNULL="\033[0m"


# function to output basic info and usage
function display_help () {
	cat <<END
video2gif: convert video into high quality animated gif
  - version 1.0.0 @ 2019.10.19
  - https://github.com/an63/video2gif

Usage:
    video2gif.sh [options] input_file
    
Default:
    Cut 5-second clip from middle of the input file, generate custom palette,
    convert into GIF at 10 fps and its width & height won't exceed 720px.

Options:
    -a: position to start cutting (default: middle of the input)
    -d: duration of the clip in seconds (default: 5)
    -n: no cutting (override -a -d)
    -f: frames per second (default: 10)
    -s: optimize for static background
    -t: speed up / slow down (default is x1.0)
    -r: rotate in clockwise, e.g. 90, 180 (default is 0)
    -w: width of resizing (default is -1 to keep the aspect ratio)
    -h: height of resizing (default is -1 to keep the aspect ratio)
    -l: max of width & height (default is 720, overridden by -w -h)
    -c: save the clip after converting
    -v: display & save the verbose ffmpeg logs
    -o: output job_name (default is timestamp under 'output' folder) 

Examples:
    $ video2gif.sh -a 1 -d 8 -r 90 -v input.wmv
    $ video2gif.sh -a 00:12:34 -d 10 -s input.mp4
    $ video2gif.sh -n -f 15 -t 2 -l 320 input.mov

END
}


# function to handle errors
function display_error () {
    printf "${CRED}[video2gif] Error: ${1}${CNULL}\n"
	exit $2
} >&2


# function to check if tool exists
function check_tool_exist {
    which "$1" >/dev/null 2>&1 || {
        display_error "required tool \"${1}\" not found" 4
    }
}


# function to return 0 when its argument is a number
function is_number () {
    [[ -n $1 ]] && [[ $1 =~ ^[0-9.]+$ ]]
}


# function to throw error when its argument is not a number
function verify_number () {
    is_number "${1}" || display_error "\"${1}\" is not a number" 1
}


# function to create directory if not exists
function create_directory {
    if [[ ! -e "$1" ]] ; then
        if [[ ! -z "$1" ]] ; then
            mkdir -p "$1"
        fi
    elif [[ ! -d "$1" ]] ; then
        display_error "\"${1}\" already exists but is not a directory" 6
    fi
}


# check required tools
check_tool_exist ffmpeg
check_tool_exist ffprobe


# parse arguments
while getopts ":a:d:nf:st:r:w:h:l:cvo:" opt; do
    case $opt in
        a)
            opt_start_time="${OPTARG}"
            ;;
        d)
            verify_number "${OPTARG}"
            opt_duration_sec="${OPTARG}"
            ;;
        n)
            opt_no_cutting=1
            ;;
        f)
            verify_number "${OPTARG}"
            opt_fps="${OPTARG}"
            ;;
        s)
            opt_optimal_static=1
            ;;
        t)
            verify_number "${OPTARG}"
            opt_speed_times="${OPTARG}"
            ;;
        r)
            verify_number "${OPTARG}"
            opt_rotate_times=$(echo "${OPTARG}/90%4" | bc)
            ;;
        w)
            verify_number "${OPTARG}"
			opt_width="${OPTARG}"
            ;;
        h)
            verify_number "${OPTARG}"
			opt_height="${OPTARG}"
            ;;
        l)
            verify_number "${OPTARG}"
			opt_pixel_limit="${OPTARG}"
            ;;
        c)
            opt_save_clip=1
            ;;
        v)
            opt_verbose_log=1
            ;;
        o)
            [[ -a "${OPTARG}" ]] && display_error "\"${OPTARG}\" already exists" 1
            opt_output_file="${OPTARG}"
            ;;
        :)
            display_error "Option -${OPTARG} is missing an argument" 2
            ;;
        \?)
            display_error "Unknown option: -${OPTARG}" 3
            ;;
    esac
done


# parse input file
shift $(( OPTIND - 1 ))
opt_input_file=$1
[[ -z "$opt_input_file" ]] && display_help && display_error "input file is required" 2


# handle input file
input_file="$opt_input_file"
ffprobe -v "$log_level" "$input_file" >/dev/null 2>&1 || {
    display_error "input file \"${input_file}\" is invalid" 5
}


# handle temp & output files
job_name=$(date "+%Y%m%d%H%M%S")"-"$(cat /dev/urandom | env LC_CTYPE=C tr -dc "a-zA-Z0-9" | fold -w 8 | head -n 1) 

create_directory "$temp_dir"
clip_file="${temp_dir}/clip-${job_name}.${input_file##*.}"
palette_file="${temp_dir}/palette-${job_name}.png"

if [[ -n "$opt_output_file" ]] ; then
    output_file="$opt_output_file"
else
    create_directory "$output_dir"
    output_file="${output_dir}/${job_name}.gif"
fi


# handle seeking
if [[ -n "$opt_start_time" ]] ; then
    arg_start_time="$opt_start_time"
else
    arg_start_time=$(echo "scale=5;$(ffprobe -v "$log_level" -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$input_file")/2" | bc)
fi

if [[ 0 -eq "$opt_no_cutting" ]] ; then
    flt_seek="-ss ${arg_start_time} -t ${opt_duration_sec}"
else
    flt_seek=""
fi


# handle rotate
if [[ "$opt_rotate_times" -gt 0 ]] ; then
    flt_rotate=$(yes "transpose=1," | head -n $opt_rotate_times | tr -d '\n')
else
    flt_rotate=""
fi


# handle speed change
if [[ $(echo "${opt_speed_times}!=1" | bc -l) -ne 0 ]] ; then
    flt_speed="setpts="$(echo "1 ${opt_speed_times}" | awk '{printf "%.3f", $1 / $2}')"*PTS,"
else
    flt_speed=""
fi


# handle fps
flt_fps="fps=${opt_fps},"


# handle resizing
[[ -n "$opt_width" ]] && arg_width="$opt_width"
[[ -n "$opt_height" ]] && arg_height="$opt_height"

if [[ -n "$opt_width" ]] || [[ -n "$opt_height" ]] ; then
    arg_scale="${arg_width}:${arg_height}"
else
    if [[ -n "$opt_pixel_limit" ]] ; then
        arg_pixel_limit="$opt_pixel_limit"
    fi
    arg_scale="'if(gt(a,1),${arg_pixel_limit},-1)':'if(gt(a,1),-1,${arg_pixel_limit})'"
fi

flt_scale="scale=${arg_scale}:flags=lanczos"


# handle static optimization
if [[ 1 -eq "$opt_optimal_static" ]] ; then
    arg_palette_stats="diff"
    arg_palette_dither="none"
fi
flt_palgen="palettegen=stats_mode=${arg_palette_stats}"
flt_paluse="paletteuse=dither=${arg_palette_dither}"


# handle logging
if [[ 1 -eq "$opt_verbose_log" ]] ; then
    arg_log="-report"
    log_level="info"
fi
flt_log="${arg_log} -v ${log_level}"


# merge all filters above
filters="${flt_rotate}${flt_speed}${flt_fps}${flt_crop}${flt_scale}"


# generate palette
[[ 1 -eq "$opt_verbose_log" ]] && export FFREPORT=file="${temp_dir}/ffmpeg-${job_name}-1pal.log"
eval ffmpeg "$flt_log" "$flt_seek" -i '"$input_file"' -vf '"${filters},${flt_palgen}"' -y '"$palette_file"'
[[ $? -ne 0 ]] && {
    display_error "fail to generate palette for input file \"${input_file}\" into gif in task \"${job_name}\"" 7
}


# convert into gif
[[ 1 -eq "$opt_verbose_log" ]] && export FFREPORT=file="${temp_dir}/ffmpeg-${job_name}-2gif.log"
eval ffmpeg "$flt_log" "$flt_seek" -i '"$input_file"' -i '"$palette_file"' -lavfi '"${filters} [x]; [x][1:v] ${flt_paluse}"' -y '"$output_file"'
[[ $? -ne 0 ]] && {
   display_error "fail to convert input file \"${input_file}\" into gif in task \"${job_name}\"" 8
}


# save as clip if required
[[ 1 -eq "$opt_save_clip" ]] && {
    [[ 1 -eq "$opt_verbose_log" ]] && export FFREPORT=file="${temp_dir}/ffmpeg-${job_name}-3clip.log"
    eval ffmpeg "$flt_log" "$flt_seek" -i '"$input_file"' -c:v copy -c:a copy -avoid_negative_ts 1 -map v:0 -map a:0 -y '"$clip_file"'
    if [[ $? -eq 0 ]] ; then
        clip_save="${output_file%%.*}"."${clip_file##*.}"
        mv "$clip_file" "$clip_save"
        printf "${CGREEN}saved clip file \"${clip_save}\"${CNULL}\n"
    else
        rm -f "$clip_file"
        display_error "fail to clip input file \"${input_file}\" in task \"${job_name}\"" 9
    fi
}


# finish
printf "${CGREEN}done! converted \"${input_file}\" -> \"${output_file}\"${CNULL}\n"
exit 0
