# "In C" score for SuperCollider

`lib/score.scd` defines `~inCScore`, a SuperCollider `Dictionary` containing the
fixed C pulse (cell 0) and the 53 numbered cells. Each cell has three parallel
arrays:

| Key        | Contents                                                         |
| ---------- | ---------------------------------------------------------------- |
| `midinote` | MIDI note numbers and `Rest()` values                            |
| `dur`      | Durations in quarter-note beats                                  |
| `note`     | Symbolic note names using Yamaha octave numbering (C3 = MIDI 60) |

From a `.scd` file in this directory:

```supercollider
"lib/score.scd".loadRelative;

~inCScore[17][\midinote]; // MIDI pitches and rests
~inCScore[17][\dur];      // Matching durations
~inCScore[17][\note];     // Matching symbolic spellings
```

To play cell 17 with SuperCollider's standard `Pbind` and default synth:

```supercollider
(
"lib/score.scd".loadRelative;
s.waitForBoot {
    var cell = ~inCScore[17];

    ~inCPlayer = Pbind(
        \instrument, \default,
        \midinote, Pseq(cell[\midinote], inf),
        \dur, Pseq(cell[\dur], inf)
    ).play;
};
)
```

The `Rest()` entries in `midinote` make the corresponding events silent.
Stop playback with `~inCPlayer.stop;`.
