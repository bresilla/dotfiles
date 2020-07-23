# Defined in - @ line 1
function pivid --wraps='mplayer -fps 200 -demuxer h264es ffmpeg://tcp://$pi:2222' --description 'alias pivid mplayer -fps 200 -demuxer h264es ffmpeg://tcp://$pi:2222'
  mplayer -fps 200 -demuxer h264es ffmpeg://tcp://$pi:2222 $argv;
end
