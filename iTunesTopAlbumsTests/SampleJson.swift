//
//  SampleJson.swift
//  iTunesTopAlbumsTests
//
//  Created by Johnny Hicks on 9/24/19.
//  Copyright © 2019 Swiftly, LLC. All rights reserved.
//

import Foundation

let sampleJsonData = """
{
  "feed": {
    "title": "Top Albums",
    "id": "https://rss.itunes.apple.com/api/v1/us/apple-music/top-albums/all/10/explicit.json",
    "author": {
      "name": "iTunes Store",
      "uri": "http://wwww.apple.com/us/itunes/"
    },
    "links": [
      {
        "self": "https://rss.itunes.apple.com/api/v1/us/apple-music/top-albums/all/10/explicit.json"
      },
      {
        "alternate": "https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewTop?genreId=34&popId=82&app=music"
      }
    ],
    "copyright": "Copyright © 2018 Apple Inc. Все права защищены.",
    "country": "us",
    "icon": "http://itunes.apple.com/favicon.ico",
    "updated": "2019-09-24T01:40:42.000-07:00",
    "results": [
      {
        "artistName": "Post Malone",
        "id": "1477880265",
        "releaseDate": "2019-09-06",
        "name": "Hollywood's Bleeding",
        "kind": "album",
        "copyright": "℗ 2019 Republic Records, a division of UMG Recordings, Inc.",
        "artistId": "966309175",
        "contentAdvisoryRating": "Explicit",
        "artistUrl": "https://music.apple.com/us/artist/post-malone/966309175?app=music",
        "artworkUrl100": "https://is1-ssl.mzstatic.com/image/thumb/Music113/v4/be/41/46/be4146f9-d1c1-9756-8b27-fde6e5b91ac4/19UMGIM78325.rgb.jpg/200x200bb.png",
        "genres": [
          {
            "genreId": "18",
            "name": "Hip-Hop/Rap",
            "url": "https://itunes.apple.com/us/genre/id18"
          },
          {
            "genreId": "34",
            "name": "Music",
            "url": "https://itunes.apple.com/us/genre/id34"
          }
        ],
        "url": "https://music.apple.com/us/album/hollywoods-bleeding/1477880265?app=music"
      },
      {
        "artistName": "Young Thug",
        "id": "1476636939",
        "releaseDate": "2019-08-16",
        "name": "So Much Fun",
        "kind": "album",
        "copyright": "℗ 2019 300 Entertainment / Atlantic Recording Corporation",
        "artistId": "81886939",
        "contentAdvisoryRating": "Explicit",
        "artistUrl": "https://music.apple.com/us/artist/young-thug/81886939?app=music",
        "artworkUrl100": "https://is3-ssl.mzstatic.com/image/thumb/Music123/v4/73/41/d1/7341d127-eb16-822f-4bf1-d316a8810c61/075679838612.jpg/200x200bb.png",
        "genres": [
          {
            "genreId": "18",
            "name": "Hip-Hop/Rap",
            "url": "https://itunes.apple.com/us/genre/id18"
          },
          {
            "genreId": "34",
            "name": "Music",
            "url": "https://itunes.apple.com/us/genre/id34"
          }
        ],
        "url": "https://music.apple.com/us/album/so-much-fun/1476636939?app=music"
      },
      {
        "artistName": "Taylor Swift",
        "id": "1468058165",
        "releaseDate": "2019-08-23",
        "name": "Lover",
        "kind": "album",
        "copyright": "℗ 2019 Taylor Swift",
        "artistId": "159260351",
        "artistUrl": "https://music.apple.com/us/artist/taylor-swift/159260351?app=music",
        "artworkUrl100": "https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/20/6f/b5/206fb560-6fd5-15f9-0b68-88d309ffc5a6/19UMGIM53909.rgb.jpg/200x200bb.png",
        "genres": [
          {
            "genreId": "14",
            "name": "Pop",
            "url": "https://itunes.apple.com/us/genre/id14"
          },
          {
            "genreId": "34",
            "name": "Music",
            "url": "https://itunes.apple.com/us/genre/id34"
          }
        ],
        "url": "https://music.apple.com/us/album/lover/1468058165?app=music"
      },
      {
        "artistName": "Lil Tecca",
        "id": "1478189929",
        "releaseDate": "2019-08-30",
        "name": "We Love You Tecca",
        "kind": "album",
        "copyright": "Galactic Records; ℗ 2019 Republic Records, a division of UMG Recordings, Inc.",
        "artistId": "1366503504",
        "contentAdvisoryRating": "Explicit",
        "artistUrl": "https://music.apple.com/us/artist/lil-tecca/1366503504?app=music",
        "artworkUrl100": "https://is2-ssl.mzstatic.com/image/thumb/Music113/v4/3d/86/e6/3d86e6e4-babe-8931-e3aa-d681a9e7a299/19UMGIM78833.rgb.jpg/200x200bb.png",
        "genres": [
          {
            "genreId": "18",
            "name": "Hip-Hop/Rap",
            "url": "https://itunes.apple.com/us/genre/id18"
          },
          {
            "genreId": "34",
            "name": "Music",
            "url": "https://itunes.apple.com/us/genre/id34"
          }
        ],
        "url": "https://music.apple.com/us/album/we-love-you-tecca/1478189929?app=music"
      },
      {
        "artistName": "King Von",
        "id": "1480458975",
        "releaseDate": "2019-09-20",
        "name": "Grandson, Vol. 1",
        "kind": "album",
        "copyright": "℗ 2019 Only The Family Entertainment / EMPIRE",
        "artistId": "1231467923",
        "contentAdvisoryRating": "Explicit",
        "artistUrl": "https://music.apple.com/us/artist/king-von/1231467923?app=music",
        "artworkUrl100": "https://is3-ssl.mzstatic.com/image/thumb/Music123/v4/71/1f/06/711f0622-1fe8-adb9-44c1-325643693441/888915977040_cover.jpg/200x200bb.png",
        "genres": [
          {
            "genreId": "18",
            "name": "Hip-Hop/Rap",
            "url": "https://itunes.apple.com/us/genre/id18"
          },
          {
            "genreId": "34",
            "name": "Music",
            "url": "https://itunes.apple.com/us/genre/id34"
          }
        ],
        "url": "https://music.apple.com/us/album/grandson-vol-1/1480458975?app=music"
      },
      {
        "artistName": "DaBaby",
        "id": "1454074600",
        "releaseDate": "2019-03-01",
        "name": "Baby on Baby",
        "kind": "album",
        "copyright": "℗ 2019 Interscope Records",
        "artistId": "1175595427",
        "contentAdvisoryRating": "Explicit",
        "artistUrl": "https://music.apple.com/us/artist/dababy/1175595427?app=music",
        "artworkUrl100": "https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/fd/88/17/fd881718-ce7a-c70f-5064-11d7832b0f4e/00602577528491.rgb.jpg/200x200bb.png",
        "genres": [
          {
            "genreId": "18",
            "name": "Hip-Hop/Rap",
            "url": "https://itunes.apple.com/us/genre/id18"
          },
          {
            "genreId": "34",
            "name": "Music",
            "url": "https://itunes.apple.com/us/genre/id34"
          }
        ],
        "url": "https://music.apple.com/us/album/baby-on-baby/1454074600?app=music"
      },
      {
        "artistName": "Melanie Martinez",
        "id": "1473836010",
        "releaseDate": "2019-09-06",
        "name": "K-12",
        "kind": "album",
        "copyright": "℗ 2019 Atlantic Recording Corporation for the United States and WEA International Inc. for the world outside the United States. A Warner Music Group Company",
        "artistId": "993014053",
        "contentAdvisoryRating": "Explicit",
        "artistUrl": "https://music.apple.com/us/artist/melanie-martinez/993014053?app=music",
        "artworkUrl100": "https://is2-ssl.mzstatic.com/image/thumb/Music113/v4/1d/2b/8b/1d2b8b85-6ad6-9624-1011-04a12aeb413d/075679876072.jpg/200x200bb.png",
        "genres": [
          {
            "genreId": "20",
            "name": "Alternative",
            "url": "https://itunes.apple.com/us/genre/id20"
          },
          {
            "genreId": "34",
            "name": "Music",
            "url": "https://itunes.apple.com/us/genre/id34"
          }
        ],
        "url": "https://music.apple.com/us/album/k-12/1473836010?app=music"
      },
      {
        "artistName": "Chris Brown",
        "id": "1466876988",
        "releaseDate": "2019-06-28",
        "name": "Indigo",
        "kind": "album",
        "copyright": "℗ 2019 Chris Brown Entertainment, LLC, under exclusive license to RCA Records.",
        "artistId": "95705522",
        "contentAdvisoryRating": "Explicit",
        "artistUrl": "https://music.apple.com/us/artist/chris-brown/95705522?app=music",
        "artworkUrl100": "https://is5-ssl.mzstatic.com/image/thumb/Music113/v4/a1/f0/d5/a1f0d589-f32c-ab4b-1a43-25ed89d09497/886447789421.jpg/200x200bb.png",
        "genres": [
          {
            "genreId": "15",
            "name": "R&B/Soul",
            "url": "https://itunes.apple.com/us/genre/id15"
          },
          {
            "genreId": "34",
            "name": "Music",
            "url": "https://itunes.apple.com/us/genre/id34"
          }
        ],
        "url": "https://music.apple.com/us/album/indigo/1466876988?app=music"
      },
      {
        "artistName": "Yung Bleu",
        "id": "1480017227",
        "releaseDate": "2019-09-20",
        "name": "Investments 6",
        "kind": "album",
        "copyright": "℗ 2019 Columbia Records, a Division of Sony Music Entertainment",
        "artistId": "547367027",
        "contentAdvisoryRating": "Explicit",
        "artistUrl": "https://music.apple.com/us/artist/yung-bleu/547367027?app=music",
        "artworkUrl100": "https://is3-ssl.mzstatic.com/image/thumb/Music123/v4/79/11/d6/7911d668-ccdb-2b3d-78cb-3c07db4227b8/886447908266.jpg/200x200bb.png",
        "genres": [
          {
            "genreId": "18",
            "name": "Hip-Hop/Rap",
            "url": "https://itunes.apple.com/us/genre/id18"
          },
          {
            "genreId": "34",
            "name": "Music",
            "url": "https://itunes.apple.com/us/genre/id34"
          }
        ],
        "url": "https://music.apple.com/us/album/investments-6/1480017227?app=music"
      },
      {
        "artistName": "Lil Durk",
        "id": "1474849228",
        "releaseDate": "2019-08-02",
        "name": "Love Songs 4 the Streets 2",
        "kind": "album",
        "copyright": "℗ 2019 Alamo (Interscope Records)",
        "artistId": "541282483",
        "contentAdvisoryRating": "Explicit",
        "artistUrl": "https://music.apple.com/us/artist/lil-durk/541282483?app=music",
        "artworkUrl100": "https://is3-ssl.mzstatic.com/image/thumb/Music113/v4/4e/fb/3a/4efb3af9-bd13-358b-1740-d88591490940/19UMGIM64104.rgb.jpg/200x200bb.png",
        "genres": [
          {
            "genreId": "18",
            "name": "Hip-Hop/Rap",
            "url": "https://itunes.apple.com/us/genre/id18"
          },
          {
            "genreId": "34",
            "name": "Music",
            "url": "https://itunes.apple.com/us/genre/id34"
          },
          {
            "genreId": "1076",
            "name": "Rap",
            "url": "https://itunes.apple.com/us/genre/id1076"
          }
        ],
        "url": "https://music.apple.com/us/album/love-songs-4-the-streets-2/1474849228?app=music"
      }
    ]
  }
}
""".data(using: .utf8)!
