#!/usr/bin/python3.8

import lmsquery

PLAYBAR_LENGTH = 20
PLAYBAR_COLOR = "#fa8c28"
NORMAL_COLOR = ""

def get_track_info():
    lms = lmsquery.LMSQuery('192.168.0.188', '9000') # use ip and port of lms server
    players = lms.get_players()
    siren = list(filter(lambda x: x['name'] == "SIREN", players))
    localhost = list(filter(lambda x: x['name'] == "Firmament", players))
    # Localhost gets precedence, otherwise use SIREN
    if len(localhost) > 0:
        player = localhost[0]
    elif len(siren) > 0:
        player = siren[0]
    else:
        player = None
    playerID = player['playerid']
    status = lms.query(playerID, 'status')
    playing_track = lms.query(playerID, 'status', int(status['playlist_cur_index']), 1, '-')['playlist_loop'][0]
    trackID = playing_track['id']

    track_info = {}
    # query songinfo tags:
    # a - artist                            A - albumartist, composer, trackartist
    # b - NONE                              B - NONE
    # c - coverid                           C - compilation (is this a compilation?)
    # d - duration (in seconds)             D - addedTime (when it was added)
    # e - album_id                          E - NONE
    # f - filesize (in bytes?)              F - dlna_profile
    # g - genre                             G - genres (plural)
    # h - NONE                              H - channels
    # i - disc                              I - samplesize
    # j - coverart (does coverart exist?)   J - artwork_track_id
    # k - NONE                              K - NONE
    # l - album name                        L - NONE
    # m - NONE                              M - NONE
    # n - modificationTime                  N - NONE
    # o - type (filetype?)                  O - playcount
    # p - genre_id                          P - genre_ids (plural)
    # q - disccount (Number of discs)       Q - NONE
    # r - bitrate                           R - NONE
    # s - artist_id                         S - albumartist_ids, composer_ids, trackartist_ids
    # t - tracknum (1-indexed)              T - samplerate
    # u - url                               U - lastUpdated
    # v - NONE                              V - NONE
    # w - NONE                              W - NONE
    # x - NONE                              X - NONE
    # y - year                              Y - replay_gain
    # z - NONE                              Z - NONE
    songinfo = lms.query(playerID, 'songinfo', 0, 100, 'track_id:'+str(trackID), 'tags:a,d')['songinfo_loop']
    for each in songinfo:
        for key in each:
            track_info[key] = each[key]
    # Get elapsed time of current track
    timeinfo = lms.query(playerID, 'time', '?')
    track_info['elapsed_time'] = timeinfo['_time']

    return track_info

def construct_playbar(num_played_blocks):
    num_played_blocks = min(num_played_blocks, PLAYBAR_LENGTH - 1)
    playbar = "%{F" + PLAYBAR_COLOR + "}"
    for i in range(num_played_blocks):
        playbar += "-"
    playbar += "%{F" + NORMAL_COLOR + "}|"
    for j in range(PLAYBAR_LENGTH - (num_played_blocks + 1)):
        playbar += "-"

    return playbar

def construct_song_string(track_info):
    title_string = track_info['artist'] + " - " + track_info['title']
    if(len(title_string) > 65):
        title_string = title_string[:60] + "..."

    fraction_played = track_info['elapsed_time'] / track_info['duration']
    num_played_blocks = round(PLAYBAR_LENGTH * fraction_played)
    playbar = construct_playbar(num_played_blocks)

    song_string = title_string + " " + playbar

    return song_string

def main():
    try:
        track_info = get_track_info()
        song_string = construct_song_string(track_info)
        print("|  " + song_string)
    except:
        print()
        exit()

main()
