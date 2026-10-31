/*
Terry Riley, In C (1964): the pulse and all 53 numbered score patterns.

Transcribed from the 1989 Celestial Harmonies score edition:
https://sabrinapenayoung.wordpress.com/wp-content/uploads/2016/03/imslp00899-terryriley-inc.pdf
Cross-checked with Tero Parviainen's score data (ISC license):
https://github.com/teropa/in-c/blob/master/src/score.json

Each pattern holds symbolic note names, MIDI notes, and durations in
quarter-note beats. The arrays have matching positions. Rest() marks a rest
in both note arrays.
0 is the eighth-note C pulse; 1..53 follow the score numbering.
Unmeasured C grace notes last 0.125 beats, taken from the following note.
Written ties are merged so that they do not re-attack.

Note names follow the Yamaha convention (C3 = MIDI 60);
the printed score uses scientific pitch notation, where that pitch is C4.
*/

(
~inCScore = Dictionary[
    0 -> (
        note: [\c5],
        midinote: [84],
        dur: [0.5]
    ),
    1 -> (
        note: [\c3, \e3, \c3, \e3, \c3, \e3],
        midinote: [60, 64, 60, 64, 60, 64],
        dur: [0.125, 0.875, 0.125, 0.875, 0.125, 0.875]
    ),
    2 -> (
        note: [\c3, \e3, \f3, \e3],
        midinote: [60, 64, 65, 64],
        dur: [0.125, 0.375, 0.5, 1]
    ),
    3 -> (
        note: [Rest(), \e3, \f3, \e3],
        midinote: [Rest(), 64, 65, 64],
        dur: [0.5, 0.5, 0.5, 0.5]
    ),
    4 -> (
        note: [Rest(), \e3, \f3, \g3],
        midinote: [Rest(), 64, 65, 67],
        dur: [0.5, 0.5, 0.5, 0.5]
    ),
    5 -> (
        note: [\e3, \f3, \g3, Rest()],
        midinote: [64, 65, 67, Rest()],
        dur: [0.5, 0.5, 0.5, 0.5]
    ),
    6 -> (
        note: [\c4],
        midinote: [72],
        dur: [8]
    ),
    7 -> (
        note: [Rest(), Rest(), Rest(), Rest(), \c3, \c3, \c3, Rest(), Rest(), Rest(), Rest(), Rest()],
        midinote: [Rest(), Rest(), Rest(), Rest(), 60, 60, 60, Rest(), Rest(), Rest(), Rest(), Rest()],
        dur: [1, 1, 1, 0.5, 0.25, 0.25, 0.5, 0.5, 1, 1, 1, 1]
    ),
    8 -> (
        note: [\g3, \f3],
        midinote: [67, 65],
        dur: [6, 8]
    ),
    9 -> (
        note: [\b3, \g3, Rest(), Rest(), Rest(), Rest()],
        midinote: [71, 67, Rest(), Rest(), Rest(), Rest()],
        dur: [0.25, 0.25, 0.5, 1, 1, 1]
    ),
    10 -> (
        note: [\b3, \g3],
        midinote: [71, 67],
        dur: [0.25, 0.25]
    ),
    11 -> (
        note: [\f3, \g3, \b3, \g3, \b3, \g3],
        midinote: [65, 67, 71, 67, 71, 67],
        dur: [0.25, 0.25, 0.25, 0.25, 0.25, 0.25]
    ),
    12 -> (
        note: [\f3, \g3, \b3, \c4],
        midinote: [65, 67, 71, 72],
        dur: [0.5, 0.5, 4, 1]
    ),
    13 -> (
        note: [\b3, \g3, \g3, \f3, \g3, Rest(), \g3],
        midinote: [71, 67, 67, 65, 67, Rest(), 67],
        dur: [0.25, 0.75, 0.25, 0.25, 0.5, 0.75, 3.25]
    ),
    14 -> (
        note: [\c4, \b3, \g3, \fs3],
        midinote: [72, 71, 67, 66],
        dur: [4, 4, 4, 4]
    ),
    15 -> (
        note: [\g3, Rest(), Rest(), Rest(), Rest()],
        midinote: [67, Rest(), Rest(), Rest(), Rest()],
        dur: [0.25, 0.75, 1, 1, 1]
    ),
    16 -> (
        note: [\g3, \b3, \c4, \b3],
        midinote: [67, 71, 72, 71],
        dur: [0.25, 0.25, 0.25, 0.25]
    ),
    17 -> (
        note: [\b3, \c4, \b3, \c4, \b3, Rest()],
        midinote: [71, 72, 71, 72, 71, Rest()],
        dur: [0.25, 0.25, 0.25, 0.25, 0.25, 0.25]
    ),
    18 -> (
        note: [\e3, \fs3, \e3, \fs3, \e3, \e3],
        midinote: [64, 66, 64, 66, 64, 64],
        dur: [0.25, 0.25, 0.25, 0.25, 0.75, 0.25]
    ),
    19 -> (
        note: [Rest(), \g4],
        midinote: [Rest(), 79],
        dur: [1.5, 1.5]
    ),
    20 -> (
        note: [\e3, \fs3, \e3, \fs3, \g2, \e3, \fs3, \e3, \fs3, \e3],
        midinote: [64, 66, 64, 66, 55, 64, 66, 64, 66, 64],
        dur: [0.25, 0.25, 0.25, 0.25, 0.75, 0.25, 0.25, 0.25, 0.25, 0.25]
    ),
    21 -> (
        note: [\fs3],
        midinote: [66],
        dur: [3]
    ),
    22 -> (
        note: [\e3, \e3, \e3, \e3, \e3, \fs3, \g3, \a3, \b3],
        midinote: [64, 64, 64, 64, 64, 66, 67, 69, 71],
        dur: [1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 0.5]
    ),
    23 -> (
        note: [\e3, \fs3, \fs3, \fs3, \fs3, \fs3, \g3, \a3, \b3],
        midinote: [64, 66, 66, 66, 66, 66, 67, 69, 71],
        dur: [0.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1]
    ),
    24 -> (
        note: [\e3, \fs3, \g3, \g3, \g3, \g3, \g3, \a3, \b3],
        midinote: [64, 66, 67, 67, 67, 67, 67, 69, 71],
        dur: [0.5, 0.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 0.5]
    ),
    25 -> (
        note: [\e3, \fs3, \g3, \a3, \a3, \a3, \a3, \a3, \b3],
        midinote: [64, 66, 67, 69, 69, 69, 69, 69, 71],
        dur: [0.5, 0.5, 0.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5]
    ),
    26 -> (
        note: [\e3, \fs3, \g3, \a3, \b3, \b3, \b3, \b3, \b3],
        midinote: [64, 66, 67, 69, 71, 71, 71, 71, 71],
        dur: [0.5, 0.5, 0.5, 0.5, 1.5, 1.5, 1.5, 1.5, 1.5]
    ),
    27 -> (
        note: [\e3, \fs3, \e3, \fs3, \g3, \e3, \g3, \fs3, \e3, \fs3, \e3],
        midinote: [64, 66, 64, 66, 67, 64, 67, 66, 64, 66, 64],
        dur: [0.25, 0.25, 0.25, 0.25, 0.5, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25]
    ),
    28 -> (
        note: [\e3, \fs3, \e3, \fs3, \e3, \e3],
        midinote: [64, 66, 64, 66, 64, 64],
        dur: [0.25, 0.25, 0.25, 0.25, 0.75, 0.25]
    ),
    29 -> (
        note: [\e3, \g3, \c4],
        midinote: [64, 67, 72],
        dur: [3, 3, 3]
    ),
    30 -> (
        note: [\c4],
        midinote: [72],
        dur: [6]
    ),
    31 -> (
        note: [\g3, \f3, \g3, \b3, \g3, \b3],
        midinote: [67, 65, 67, 71, 67, 71],
        dur: [0.25, 0.25, 0.25, 0.25, 0.25, 0.25]
    ),
    32 -> (
        note: [\f3, \g3, \f3, \g3, \b3, \f3, \g3],
        midinote: [65, 67, 65, 67, 71, 65, 67],
        dur: [0.25, 0.25, 0.25, 0.25, 0.25, 3.25, 1.5]
    ),
    33 -> (
        note: [\g3, \f3, Rest()],
        midinote: [67, 65, Rest()],
        dur: [0.25, 0.25, 0.5]
    ),
    34 -> (
        note: [\g3, \f3],
        midinote: [67, 65],
        dur: [0.25, 0.25]
    ),
    35 -> (
        note: [
            \f3, \g3, \b3, \g3, \b3, \g3, \b3, \g3, \b3, \g3, Rest(), Rest(), Rest(), Rest(),
            \bb3, \g4, \a4, \g4, \b4, \a4, \g4, \e4, \g4, \fs4, Rest(), Rest(), Rest(), \e4, \f4
        ],
        midinote: [
            65, 67, 71, 67, 71, 67, 71, 67, 71, 67, Rest(), Rest(), Rest(), Rest(),
            70, 79, 81, 79, 83, 81, 79, 76, 79, 78, Rest(), Rest(), Rest(), 76,
            77
        ],
        dur: [
            0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.5, 1, 1, 1,
            1, 3, 0.5, 1, 0.5, 1.5, 0.5, 3, 0.5, 3.5, 1, 1, 0.5, 2.5, 6
        ]
    ),
    36 -> (
        note: [\f3, \g3, \b3, \g3, \b3, \g3],
        midinote: [65, 67, 71, 67, 71, 67],
        dur: [0.25, 0.25, 0.25, 0.25, 0.25, 0.25]
    ),
    37 -> (
        note: [\f3, \g3],
        midinote: [65, 67],
        dur: [0.25, 0.25]
    ),
    38 -> (
        note: [\f3, \g3, \b3],
        midinote: [65, 67, 71],
        dur: [0.25, 0.25, 0.25]
    ),
    39 -> (
        note: [\b3, \g3, \f3, \g3, \b3, \c4],
        midinote: [71, 67, 65, 67, 71, 72],
        dur: [0.25, 0.25, 0.25, 0.25, 0.25, 0.25]
    ),
    40 -> (
        note: [\b3, \f3],
        midinote: [71, 65],
        dur: [0.25, 0.25]
    ),
    41 -> (
        note: [\b3, \g3],
        midinote: [71, 67],
        dur: [0.25, 0.25]
    ),
    42 -> (
        note: [\c4, \b3, \a3, \c4],
        midinote: [72, 71, 69, 72],
        dur: [4, 4, 4, 4]
    ),
    43 -> (
        note: [\f4, \e4, \f4, \e4, \e4, \e4, \e4, \f4, \e4],
        midinote: [77, 76, 77, 76, 76, 76, 76, 77, 76],
        dur: [0.25, 0.25, 0.25, 0.25, 0.5, 0.5, 0.5, 0.25, 0.25]
    ),
    44 -> (
        note: [\f4, \e4, \e4, \c4],
        midinote: [77, 76, 76, 72],
        dur: [0.5, 1, 0.5, 1]
    ),
    45 -> (
        note: [\d4, \d4, \g3],
        midinote: [74, 74, 67],
        dur: [1, 1, 1]
    ),
    46 -> (
        note: [\g3, \d4, \e4, \d4, Rest(), \g3, Rest(), \g3, Rest(), \g3, \g3, \d4, \e4, \d4],
        midinote: [67, 74, 76, 74, Rest(), 67, Rest(), 67, Rest(), 67, 67, 74, 76, 74],
        dur: [0.25, 0.25, 0.25, 0.25, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.25, 0.25, 0.25, 0.25]
    ),
    47 -> (
        note: [\d4, \e4, \d4],
        midinote: [74, 76, 74],
        dur: [0.25, 0.25, 0.5]
    ),
    48 -> (
        note: [\g3, \g3, \f3],
        midinote: [67, 67, 65],
        dur: [6, 4, 5]
    ),
    49 -> (
        note: [\f3, \g3, \bb3, \g3, \bb3, \g3],
        midinote: [65, 67, 70, 67, 70, 67],
        dur: [0.25, 0.25, 0.25, 0.25, 0.25, 0.25]
    ),
    50 -> (
        note: [\f3, \g3],
        midinote: [65, 67],
        dur: [0.25, 0.25]
    ),
    51 -> (
        note: [\f3, \g3, \bb3],
        midinote: [65, 67, 70],
        dur: [0.25, 0.25, 0.25]
    ),
    52 -> (
        note: [\g3, \bb3],
        midinote: [67, 70],
        dur: [0.25, 0.25]
    ),
    53 -> (
        note: [\bb3, \g3],
        midinote: [70, 67],
        dur: [0.25, 0.25]
    )
];
)
