<?php

   include('model/song.php');
   include('model/database.php');
  
   $songData = '{
      "timestamp": 1561994737904,
      "context": null,
      "progress_ms": 16262,
      "item": {
        "album": {
          "album_type": "single",
          "artists": [
            {
              "external_urls": {
                "spotify": "https://open.spotify.com/artist/2kb87WL7uGUAEoypIuEfk5"
              },
              "href": "https://api.spotify.com/v1/artists/2kb87WL7uGUAEoypIuEfk5",
              "id": "2kb87WL7uGUAEoypIuEfk5",
              "name": "Masato Hijirikawa",
              "type": "artist",
              "uri": "spotify:artist:2kb87WL7uGUAEoypIuEfk5"
            },
            {
              "external_urls": {
                "spotify": "https://open.spotify.com/artist/3fBz9HmyROxzZtVq9vayB7"
              },
              "href": "https://api.spotify.com/v1/artists/3fBz9HmyROxzZtVq9vayB7",
              "id": "3fBz9HmyROxzZtVq9vayB7",
              "name": "Camus",
              "type": "artist",
              "uri": "spotify:artist:3fBz9HmyROxzZtVq9vayB7"
            },
            {
              "external_urls": {
                "spotify": "https://open.spotify.com/artist/3EvnfYt5Ua06s2BtGyo8cS"
              },
              "href": "https://api.spotify.com/v1/artists/3EvnfYt5Ua06s2BtGyo8cS",
              "id": "3EvnfYt5Ua06s2BtGyo8cS",
              "name": "Eiji Otori",
              "type": "artist",
              "uri": "spotify:artist:3EvnfYt5Ua06s2BtGyo8cS"
            }
          ],
          "available_markets": [
            "AD",
            "AT",
            "BE",
            "BG",
            "CH",
            "CY",
            "CZ",
            "DE",
            "DK",
            "EE",
            "ES",
            "FI",
            "FR",
            "GB",
            "GR",
            "HU",
            "IE",
            "IS",
            "IT",
            "LI",
            "LT",
            "LU",
            "LV",
            "MC",
            "MT",
            "NL",
            "NO",
            "PL",
            "PT",
            "RO",
            "SE",
            "SK",
            "TR"
          ],
          "external_urls": {
            "spotify": "https://open.spotify.com/album/7MwdRpIlC26JCZnCq5aEMB"
          },
          "href": "https://api.spotify.com/v1/albums/7MwdRpIlC26JCZnCq5aEMB",
          "id": "7MwdRpIlC26JCZnCq5aEMB",
          "images": [
            {
              "height": 640,
              "url": "https://i.scdn.co/image/5ee8f51c40810c95a77907e784b7ee27a7c8d6bf",
              "width": 640
            },
            {
              "height": 300,
              "url": "https://i.scdn.co/image/ac2d4c1eaf47d74db83d0ec6086719d43f813b6b",
              "width": 300
            },
            {
              "height": 64,
              "url": "https://i.scdn.co/image/6063df81921ed9c5fb86a5faffdfca678a759a02",
              "width": 64
            }
          ],
          "name": "Gekijyouban Uta no Prince-sama Maji LOVE Kingdom - \"Feather in the Hand\" (Special Unit Masato, Camus, Eiji)",
          "release_date": "2019-01-16",
          "release_date_precision": "day",
          "total_tracks": 2,
          "type": "album",
          "uri": "spotify:album:7MwdRpIlC26JCZnCq5aEMB"
        },
        "artists": [
          {
            "external_urls": {
              "spotify": "https://open.spotify.com/artist/2kb87WL7uGUAEoypIuEfk5"
            },
            "href": "https://api.spotify.com/v1/artists/2kb87WL7uGUAEoypIuEfk5",
            "id": "2kb87WL7uGUAEoypIuEfk5",
            "name": "Masato Hijirikawa",
            "type": "artist",
            "uri": "spotify:artist:2kb87WL7uGUAEoypIuEfk5"
          },
          {
            "external_urls": {
              "spotify": "https://open.spotify.com/artist/3fBz9HmyROxzZtVq9vayB7"
            },
            "href": "https://api.spotify.com/v1/artists/3fBz9HmyROxzZtVq9vayB7",
            "id": "3fBz9HmyROxzZtVq9vayB7",
            "name": "Camus",
            "type": "artist",
            "uri": "spotify:artist:3fBz9HmyROxzZtVq9vayB7"
          },
          {
            "external_urls": {
              "spotify": "https://open.spotify.com/artist/3EvnfYt5Ua06s2BtGyo8cS"
            },
            "href": "https://api.spotify.com/v1/artists/3EvnfYt5Ua06s2BtGyo8cS",
            "id": "3EvnfYt5Ua06s2BtGyo8cS",
            "name": "Eiji Otori",
            "type": "artist",
            "uri": "spotify:artist:3EvnfYt5Ua06s2BtGyo8cS"
          }
        ],
        "available_markets": [
          "AD",
          "AT",
          "BE",
          "BG",
          "CH",
          "CY",
          "CZ",
          "DE",
          "DK",
          "EE",
          "ES",
          "FI",
          "FR",
          "GB",
          "GR",
          "HU",
          "IE",
          "IS",
          "IT",
          "LI",
          "LT",
          "LU",
          "LV",
          "MC",
          "MT",
          "NL",
          "NO",
          "PL",
          "PT",
          "RO",
          "SE",
          "SK",
          "TR"
        ],
        "disc_number": 1,
        "duration_ms": 240413,
        "explicit": false,
        "external_ids": {
          "isrc": "JPU501800054"
        },
        "external_urls": {
          "spotify": "https://open.spotify.com/track/2LiWmvibOOqMzZtEiSdHbv"
        },
        "href": "https://api.spotify.com/v1/tracks/2LiWmvibOOqMzZtEiSdHbv",
        "id": "2LiWmvibOOqMzZtEiSdHbv",
        "is_local": false,
        "name": "Feather in the Hand",
        "popularity": 8,
        "preview_url": "https://p.scdn.co/mp3-preview/3c0373061fba5666933f1845b83c91e704e5e765?cid=774b29d4f13844c495f206cafdad9c86",
        "track_number": 1,
        "type": "track",
        "uri": "spotify:track:2LiWmvibOOqMzZtEiSdHbv"
      },
      "currently_playing_type": "track",
      "actions": {
        "disallows": {
          "resuming": true,
          "toggling_repeat_context": true,
          "toggling_shuffle": true
        }
      },
      "is_playing": true
    }';

    $test = '{
      "timestamp": 1561995556706,
      "context": null,
      "progress_ms": 218287,
      "item": {
        "album": {
          "album_type": "album",
          "artists": [
            {
              "external_urls": {
                "spotify": "https://open.spotify.com/artist/7EGE6HA4Y6UcTk0aH1irTd"
              },
              "href": "https://api.spotify.com/v1/artists/7EGE6HA4Y6UcTk0aH1irTd",
              "id": "7EGE6HA4Y6UcTk0aH1irTd",
              "name": "Ittoki Otoya",
              "type": "artist",
              "uri": "spotify:artist:7EGE6HA4Y6UcTk0aH1irTd"
            }
          ],
          "available_markets": [
            "AD",
            "AT",
            "BE",
            "BG",
            "CH",
            "CY",
            "CZ",
            "DE",
            "DK",
            "EE",
            "ES",
            "FI",
            "FR",
            "GB",
            "GR",
            "HU",
            "IE",
            "IS",
            "IT",
            "LI",
            "LT",
            "LU",
            "LV",
            "MC",
            "MT",
            "NL",
            "NO",
            "PL",
            "PT",
            "RO",
            "SE",
            "SK",
            "TR"
          ],
          "external_urls": {
            "spotify": "https://open.spotify.com/album/6tWjIwhrJaR4mhAfhQPmV9"
          },
          "href": "https://api.spotify.com/v1/albums/6tWjIwhrJaR4mhAfhQPmV9",
          "id": "6tWjIwhrJaR4mhAfhQPmV9",
          "images": [
            {
              "height": 640,
              "url": "https://i.scdn.co/image/5cba1f032901c54506d1021926f89c0bc20cf845",
              "width": 640
            },
            {
              "height": 300,
              "url": "https://i.scdn.co/image/e8e56c78379ed29642df433fe05404a111215312",
              "width": 300
            },
            {
              "height": 64,
              "url": "https://i.scdn.co/image/92c446d1965b95dc2167c921f93d7f1cf7d6fb2f",
              "width": 64
            }
          ],
          "name": "I Am Here",
          "release_date": "2019-06-05",
          "release_date_precision": "day",
          "total_tracks": 12,
          "type": "album",
          "uri": "spotify:album:6tWjIwhrJaR4mhAfhQPmV9"
        },
        "artists": [
          {
            "external_urls": {
              "spotify": "https://open.spotify.com/artist/7EGE6HA4Y6UcTk0aH1irTd"
            },
            "href": "https://api.spotify.com/v1/artists/7EGE6HA4Y6UcTk0aH1irTd",
            "id": "7EGE6HA4Y6UcTk0aH1irTd",
            "name": "Ittoki Otoya",
            "type": "artist",
            "uri": "spotify:artist:7EGE6HA4Y6UcTk0aH1irTd"
          }
        ],
        "available_markets": [
          "AD",
          "AT",
          "BE",
          "BG",
          "CH",
          "CY",
          "CZ",
          "DE",
          "DK",
          "EE",
          "ES",
          "FI",
          "FR",
          "GB",
          "GR",
          "HU",
          "IE",
          "IS",
          "IT",
          "LI",
          "LT",
          "LU",
          "LV",
          "MC",
          "MT",
          "NL",
          "NO",
          "PL",
          "PT",
          "RO",
          "SE",
          "SK",
          "TR"
        ],
        "disc_number": 1,
        "duration_ms": 256640,
        "explicit": false,
        "external_ids": {
          "isrc": "JPU500900140"
        },
        "external_urls": {
          "spotify": "https://open.spotify.com/track/0i3lXGMgrNhLC9Dxrh577Q"
        },
        "href": "https://api.spotify.com/v1/tracks/0i3lXGMgrNhLC9Dxrh577Q",
        "id": "0i3lXGMgrNhLC9Dxrh577Q",
        "is_local": false,
        "name": "Trust My Dream",
        "popularity": 3,
        "preview_url": "https://p.scdn.co/mp3-preview/1129818270547a3b5a1f790c352b9be7a4d6f42b?cid=774b29d4f13844c495f206cafdad9c86",
        "track_number": 1,
        "type": "track",
        "uri": "spotify:track:0i3lXGMgrNhLC9Dxrh577Q"
      },
      "currently_playing_type": "track",
      "actions": {
        "disallows": {
          "resuming": true,
          "toggling_repeat_context": true,
          "toggling_shuffle": true
        }
      },
      "is_playing": true
    }';

    $song  = new Song($test);

    $database = new DatabaseConnector();

    $database->saveSongEntry('breakxes', $song);