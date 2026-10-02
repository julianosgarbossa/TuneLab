//
//  HomeViewModel.swift
//  TuneLab
//
//  Created by Juliano Sgarbossa on 02/10/26.
//

import Foundation

final class HomeViewModel {
    private var playlists = [
        Playlist(
            categoryImage: "category_01",
            categoryName: "RELAX ALL THE TIME",
            categoryDate: "June 2018",
            title: "Cinematic Piano",
            likeCount: "9,543",
            duration: "28m 14s",
            description: "Memorable piano themes from Amélie, The Piano, La La Land and Pride & Prejudice. A gentle soundtrack for quiet moments.",
            coverImage: "cover_playlist_01",
            tracks: [
                Track(
                    coverImage: "cover_track_01",
                    title: "Comptine d'un autre été, l'après-midi",
                    artistName: "Yann Tiersen"
                ),
                Track(
                    coverImage: "cover_track_02",
                    title: "The Heart Asks Pleasure First",
                    artistName: "Michael Nyman"
                ),
                Track(
                    coverImage: "cover_track_03",
                    title: "Mia & Sebastian's Theme",
                    artistName: "Justin Hurwitz"
                ),
                Track(
                    coverImage: "cover_track_04",
                    title: "Dawn",
                    artistName: "Jean-Yves Thibaudet"
                ),
                Track(
                    coverImage: "cover_track_05",
                    title: "La Valse d'Amélie (Version piano)",
                    artistName: "Yann Tiersen"
                ),
                Track(
                    coverImage: "cover_track_06",
                    title: "Big My Secret",
                    artistName: "Michael Nyman"
                ),
                Track(
                    coverImage: "cover_track_07",
                    title: "Engagement Party",
                    artistName: "Justin Hurwitz"
                ),
                Track(
                    coverImage: "cover_track_08",
                    title: "Liz On Top of the World",
                    artistName: "Jean-Yves Thibaudet"
                ),
                Track(
                    coverImage: "cover_track_09",
                    title: "Le moulin",
                    artistName: "Yann Tiersen"
                ),
                Track(
                    coverImage: "cover_track_10",
                    title: "The Promise",
                    artistName: "Michael Nyman"
                ),
                Track(
                    coverImage: "cover_track_11",
                    title: "Les deux pianos",
                    artistName: "Yann Tiersen"
                ),
                Track(
                    coverImage: "cover_track_12",
                    title: "Here To There",
                    artistName: "Michael Nyman"
                )
            ]
        ),

        Playlist(
            categoryImage: "category_02",
            categoryName: "PERFECT OLDIES",
            categoryDate: "July 2018",
            title: "80s Smash Hits",
            likeCount: "18,276",
            duration: "49m 41s",
            description: "Iconic pop, synth-pop and rock hits from the 1980s. Rediscover unforgettable hooks, dance-floor favorites and sing-along classics.",
            coverImage: "cover_playlist_02",
            tracks: [
                Track(
                    coverImage: "cover_track_13",
                    title: "Take On Me",
                    artistName: "a-ha"
                ),
                Track(
                    coverImage: "cover_track_14",
                    title: "Billie Jean",
                    artistName: "Michael Jackson"
                ),
                Track(
                    coverImage: "cover_track_15",
                    title: "Sweet Dreams (Are Made of This)",
                    artistName: "Eurythmics"
                ),
                Track(
                    coverImage: "cover_track_16",
                    title: "I Wanna Dance with Somebody (Who Loves Me)",
                    artistName: "Whitney Houston"
                ),
                Track(
                    coverImage: "cover_track_17",
                    title: "Africa",
                    artistName: "Toto"
                ),
                Track(
                    coverImage: "cover_track_18",
                    title: "Girls Just Want to Have Fun",
                    artistName: "Cyndi Lauper"
                ),
                Track(
                    coverImage: "cover_track_19",
                    title: "Wake Me Up Before You Go-Go",
                    artistName: "Wham!"
                ),
                Track(
                    coverImage: "cover_track_20",
                    title: "Livin' On A Prayer",
                    artistName: "Bon Jovi"
                ),
                Track(
                    coverImage: "cover_track_21",
                    title: "Eye of the Tiger",
                    artistName: "Survivor"
                ),
                Track(
                    coverImage: "cover_track_22",
                    title: "Dancing In the Dark",
                    artistName: "Bruce Springsteen"
                ),
                Track(
                    coverImage: "cover_track_23",
                    title: "Uptown Girl",
                    artistName: "Billy Joel"
                ),
                Track(
                    coverImage: "cover_track_24",
                    title: "Karma Chameleon",
                    artistName: "Culture Club"
                )
            ]
        ),

        Playlist(
            categoryImage: "category_03",
            categoryName: "EASY MORNINGS",
            categoryDate: "August 2018",
            title: "Slow Mornings",
            likeCount: "6,812",
            duration: "44m 44s",
            description: "Ease into the day with warm vocals, mellow guitars and gentle piano. A laid-back mix for your first coffee and unhurried mornings.",
            coverImage: "cover_playlist_03",
            tracks: [
                Track(
                    coverImage: "cover_track_25",
                    title: "Banana Pancakes",
                    artistName: "Jack Johnson"
                ),
                Track(
                    coverImage: "cover_track_26",
                    title: "Heartbeats",
                    artistName: "José González"
                ),
                Track(
                    coverImage: "cover_track_27",
                    title: "Come Away With Me",
                    artistName: "Norah Jones"
                ),
                Track(
                    coverImage: "cover_track_28",
                    title: "Better Together",
                    artistName: "Jack Johnson"
                ),
                Track(
                    coverImage: "cover_track_29",
                    title: "First Day of My Life",
                    artistName: "Bright Eyes"
                ),
                Track(
                    coverImage: "cover_track_30",
                    title: "Northern Wind",
                    artistName: "City and Colour"
                ),
                Track(
                    coverImage: "cover_track_31",
                    title: "I Will Follow You into the Dark",
                    artistName: "Death Cab for Cutie"
                ),
                Track(
                    coverImage: "cover_track_32",
                    title: "Lost In The Light",
                    artistName: "Bahamas"
                ),
                Track(
                    coverImage: "cover_track_33",
                    title: "Holocene",
                    artistName: "Bon Iver"
                ),
                Track(
                    coverImage: "cover_track_34",
                    title: "Gravity",
                    artistName: "John Mayer"
                ),
                Track(
                    coverImage: "cover_track_35",
                    title: "The One That Got Away",
                    artistName: "The Civil Wars"
                ),
                Track(
                    coverImage: "cover_track_36",
                    title: "The Luckiest",
                    artistName: "Ben Folds"
                )
            ]
        ),

        Playlist(
            categoryImage: "category_04",
            categoryName: "TIMELESS JAZZ",
            categoryDate: "September 2018",
            title: "Jazz Classics",
            likeCount: "12,408",
            duration: "1h 23m 44s",
            description: "Explore two landmarks of 1959 jazz: Kind of Blue and Time Out. Miles Davis and The Dave Brubeck Quartet bring lyrical solos, warm tones and inventive rhythms.",
            coverImage: "cover_playlist_04",
            tracks: [
                Track(
                    coverImage: "cover_track_37",
                    title: "Take Five",
                    artistName: "The Dave Brubeck Quartet"
                ),
                Track(
                    coverImage: "cover_track_38",
                    title: "So What",
                    artistName: "Miles Davis"
                ),
                Track(
                    coverImage: "cover_track_39",
                    title: "Blue Rondo à la Turk",
                    artistName: "The Dave Brubeck Quartet"
                ),
                Track(
                    coverImage: "cover_track_40",
                    title: "Blue In Green",
                    artistName: "Miles Davis"
                ),
                Track(
                    coverImage: "cover_track_41",
                    title: "Strange Meadow Lark",
                    artistName: "The Dave Brubeck Quartet"
                ),
                Track(
                    coverImage: "cover_track_42",
                    title: "Freddie Freeloader",
                    artistName: "Miles Davis"
                ),
                Track(
                    coverImage: "cover_track_43",
                    title: "Three to Get Ready",
                    artistName: "The Dave Brubeck Quartet"
                ),
                Track(
                    coverImage: "cover_track_44",
                    title: "All Blues",
                    artistName: "Miles Davis"
                ),
                Track(
                    coverImage: "cover_track_45",
                    title: "Kathy's Waltz",
                    artistName: "The Dave Brubeck Quartet"
                ),
                Track(
                    coverImage: "cover_track_46",
                    title: "Flamenco Sketches",
                    artistName: "Miles Davis"
                ),
                Track(
                    coverImage: "cover_track_47",
                    title: "Everybody's Jumpin'",
                    artistName: "The Dave Brubeck Quartet"
                ),
                Track(
                    coverImage: "cover_track_48",
                    title: "Pick Up Sticks",
                    artistName: "The Dave Brubeck Quartet"
                )
            ]
        )
    ]
    
    var numberOfRowsInSection: Int {
        return playlists.count
    }
    
    var heightForRowAt: CGFloat {
        return CGFloat(500)
    }
    
    func loadCurrentPlaylist(index: Int) -> Playlist {
        return playlists[index]
    }
}
