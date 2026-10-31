/*

 /$$$$$$                  /$$$$$$
|_  $$_/                 /$$__  $$
  | $$   /$$$$$$$       | $$  \__/
  | $$  | $$__  $$      | $$
  | $$  | $$  \ $$      | $$
  | $$  | $$  | $$      | $$    $$
 /$$$$$$| $$  | $$      |  $$$$$$/
|______/|__/  |__/       \______/

*/

(
"lib/score.scd".loadRelative;

s.waitForBoot {
    var cell = ~inCScore[1];

    ~inCPlayer = Pbind(
        \instrument, \default,
        \midinote, Pseq(cell[\midinote], inf),
        \dur, Pseq(cell[\dur], inf)
    ).play;
};
)
