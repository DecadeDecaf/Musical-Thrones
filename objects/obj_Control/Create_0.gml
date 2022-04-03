Sxtnths = 0
Eighths = 0
Quarts = 0
Halves = 0
Wholes = 0
Doubles = 0
TT = 0

ScrollSpeed = 20
DelayOffx = -3840
Offx = -3840
PlayOffx = 0

Section = 0
Subsection = 0
Double = false
Intro = [-1, snd_0a]
Opening = [snd_1a, snd_1b, snd_1c, snd_1d, snd_1e, snd_1f, snd_1g, snd_1h, snd_1i, snd_1j, snd_1k]
VerseA = [snd_2a, snd_3a, snd_3b, snd_3c, snd_3d, snd_3f]
VerseB = [snd_2a, snd_3a, snd_3b, snd_3c, snd_3d, snd_3f]
Chorus = [snd_4a, snd_4b, snd_4c, snd_4d, snd_4e, snd_4f]
Outro = [snd_5a]
Song = [Intro, Opening, VerseA, Chorus, VerseB, Chorus, Outro]

Score = 0

Dialog = [["Ruler Tempo", "who goes there?!"], ["Player", "'tis i, unnamed player character"], ["Ruler Tempo", "why i oughta send my whole army after you!"], ["Player", "that won't be necessary, your majesty"], ["Ruler Tempo", "oh?"], ["Player", "that's right"], ["Player", "i've come to challenge the title of gender-neutral sovereign over this land"], ["Ruler Tempo", "very well..."], ["Ruler Tempo", "as per tradition, i pick the game"], ["Ruler Tempo", "...musical chairs!!"], ["Player", "but you are sitting on the only chair!"], ["Player", "this isn't fair, my liege"], ["Ruler Tempo", "reach my throne before the song ends"], ["Ruler Tempo", "impress me, and i might just delay the inevitable outro"], ["Ruler Tempo", "also 'my liege' doesn't feel gender-neutral to me"], ["Ruler Tempo", "it has masculine roots"], ["Player", "terribly sorry, o esteemed ruler tempo"], ["Ruler Tempo", "it's ok"], ["Ruler Tempo", "good luck!"], ["Player", "it's on"]]
DialogPart = 0

global.Fail = false

randomize()

display_reset(4, true)
audio_master_gain(0.75)

PoolA = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
PoolB = ["AT", "AH", "AW", "AM", "AN", "AD", "ME", "MY", "PI", "WE", "IF", "IT", "OH", "NO", "OW", "SO", "HI", "OR", "ON", "GO", "UP", "US"]
PoolC = ["ART", "CAR", "EMU", "DEN", "TIN", "PIG", "HOT", "BUS", "ALT", "TAD", "END", "PRO", "SHY", "FRY", "AND", "WIT", "TOO", "YES", "SEE", "TON", "ASK", "KIT", "CAM", "BAG", "THE", "TWO", "SIX", "TEN", "MET", "ZOO", "EYE", "FUN", "BUN", "DAY", "RED", "DOG", "AIR", "TOY"]
PoolD = ["JAZZ", "FADE", "DARE", "SEND", "MEAN", "EACH", "WISP", "INTO", "LIME", "TOLD", "CORN", "LOUD", "SONG", "HUNT", "TUNE", "COZY", "BOIL", "OHIO", "READ", "LURE", "ITCH", "DESK", "MOON", "RING", "OPEN", "OVER", "QUIT", "EXIT", "FAST", "SLOW", "BLUE", "COLD", "FOUR", "RICE", "COMB", "LIST", "BEST", "ZERO", "GOOD"]
PoolE = ["SANDY", "TREND", "MIXED", "PORCH", "LUDUM", "CHAIR", "TEMPO", "IDAHO", "SOUTH", "MUSIC", "DANCE", "TREES", "IVORY", "OILED", "RUINS", "RHYME", "ARTSY", "DELAY", "ROYAL", "SHARK", "QUICK", "SMILE", "CHILD", "REACH", "HAPPY", "SUNNY", "TABLE", "SPEAK", "VOICE", "CROWN", "PANTS", "SHIRT"]
PoolF = ["WANTED", "ISLAND", "MELODY", "ELEVEN", "PAINTS", "BISHOP", "THRONE", "MOMENT", "BURGER", "RHYTHM", "CARPET", "STUDIO", "CASTLE", "LOVELY", "CITRUS", "STRAWS"]
PoolG = ["SNOW DAY", "POOL CUE", "DEAR GOD", "SEND OUT", "BUSY BEE", "TREE SAP", "FOOD DYE", "FIRE ANT", "KNEE CAP", "RACE CAR"]
PoolH = ["CAR WASH", "RAT HOLE", "ZIP FILE", "BIG BANG", "FOR REAL", "BEE HIVE", "PET ROCK", "AIR HEAD", "SOY BEAN", "THE BOSS"]
PoolI = ["BACTERIA", "ALUMINUM", "BASEBALL", "DECISION", "SPECIFIC", "CIVILIAN", "MOUNTAIN", "OVERHEAD", "PURCHASE", "PROTOCOL", "QUESTION", "STANDARD", "SYMPATHY", "TACTICAL", "WOODLAND", "TRIANGLE", "SUBURBAN", "HOMEPAGE", "GOODWILL", "ENORMOUS", "FRIENDLY", "COLORFUL", "AUDACITY"]

FullWord = ""

Pattern = []
Emblem = 0
Ask = 0

ThroneDistance = -3840
Playing = false
Out = false
Darken = 0.25

audio_sound_pitch(snd_Voice, random_range(1.15, 1.35))
global.Voice = audio_play_sound(snd_Voice, 1, false)

Frame = 0
global.Endless = false

depth = 2
