#!/bin/bash
tmp_dir="/tmp/spotify"
tmp_song_path=$tmp_dir/song
tmp_artist_path=$tmp_dir/artist
tmp_cover_path=$tmp_dir/cover.png
pattern='/\G[^\x00-\x7F]/gm'

[[ ! -d $tmp_dir ]] && mkdir -p $tmp_dir

sleep 1

artlink="$(playerctl metadata mpris:artUrl | sed -e 's/open.spotify.com/i.scdn.co/g')"
artist=$(playerctl -p spotifyd metadata --format '{{ artist }}')
title=$(playerctl -p spotifyd metadata --format '{{ title }}')

curl -s "$artlink" --output $tmp_cover_path

if [ $(echo -n "$artist" | wc -c) -le 25 ]; then
    echo $artist > $tmp_artist_path
else
    if [[ "$artist" =~ [^\x00-\x7F] ]]; then
        echo $(echo $artist | awk '{ print substr($0, 1, 10) }')... > $tmp_artist_path
    elif [[ "$artist" -le 22 ]]; then
        echo $(echo $artist | awk '{print $1, $2}') > $tmp_artist_path
    else
        echo $(echo $artist | awk '{print $1, $2, $3}')... > $tmp_artist_path
    fi
fi

if [ $(echo -n "$title" | wc -c) -le 25 ]; then
    echo $title > $tmp_song_path
else
    if [[ "$title" =~ [^\x00-\x7F] ]]; then
        echo $(echo $title | awk '{ print substr($0, 1, 10) }')... > $tmp_song_path
    elif [[ "$title" -le 22 ]]; then
        echo $(echo $title | awk '{print $1, $2}') > $tmp_song_path
    else
        echo $(echo $title | awk '{print $1, $2, $3}')... > $tmp_song_path
    fi
fi
