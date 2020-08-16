FEELINGS = {
    "satisfied": {
      "affection": {
        "words": [
          "compassionate",
          "friendly",
          "loving",
          "open-hearted",
          "sympathetic",
          "tender",
          "warm"
        ]
      },
      "confident": {
        "words": [
          "empowered",
          "open",
          "proud",
          "safe",
          "secure"
        ]
      },
      "engaged": {
        "words": [
          "absorbed",
          "alert",
          "curious",
          "enchanted",
          "engrossed",
          "entranced",
          "fascinated",
          "interested",
          "intrigued",
          "involved",
          "spellbound",
          "stimulated"
        ]
      },
      "excited": {
        "words": [
          "amazed",
          "animated",
          "ardent",
          "aroused",
          "astonished",
          "dazzled",
          "eager",
          "energetic",
          "enthusiastic",
          "giddy",
          "invigorated",
          "lively",
          "passionate",
          "surprised",
          "vibrant"
        ]
      },
      "exhilarated": {
        "words": [
          "blissful",
          "ecstatic",
          "elated",
          "enthralled",
          "exuberant",
          "radiant",
          "rapturous",
          "thrilled"
        ]
      },
      "grateful": {
        "words": [
          "appreciative",
          "moved",
          "thankful",
          "touched"
        ]
      },
      "hopeful": {
        "words": [
          "encouraged",
          "expectant",
          "optimistic"
        ]
      },
      "inspired": {
        "words": [
          "amazed",
          "awed",
          "wonder"
        ]
      },
      "peaceful": {
        "words": [
          "calm",
          "centered",
          "clear-headed",
          "comfortable",
          "content",
          "equanimous",
          "fulfilled",
          "mellow",
          "quiet",
          "relaxed",
          "relieved",
          "satisfied",
          "serene",
          "still",
          "tranquil",
          "trusting"
        ]
      },
      "refreshed": {
        "words": [
          "enlivened",
          "rejuvenated",
          "renewed",
          "rested",
          "restored",
          "revived"
        ]
      }
    },
    "unsatisfied": {
      "afraid": {
        "words": [
          "apprehensive",
          "dread",
          "foreboding",
          "frightened",
          "mistrustful",
          "panicked",
          "petrified",
          "scared",
          "suspicious",
          "terrified",
          "wary",
          "worried"
        ]
      },
      "angry": {
        "words": [
          "enraged",
          "furious",
          "incensed",
          "indignant",
          "irate",
          "livid",
          "outraged",
          "resentful"
        ]
      },
      "annoyed": {
        "words": [
          "aggravated",
          "disgruntled",
          "dismayed",
          "displeased",
          "exasperated",
          "frustrated",
          "impatient",
          "irked",
          "irritated"
        ]
      },
      "aversion": {
        "words": [
          "animosity",
          "appalled",
          "contempt",
          "disgusted",
          "dislike",
          "hate",
          "horrified",
          "hostile",
          "repulsed"
        ]
      },
      "confused": {
        "words": [
          "ambivalent",
          "baffled",
          "bewildered",
          "dazed",
          "hesitant",
          "lost",
          "mystified",
          "perplexed",
          "puzzled",
          "torn"
        ]
      },
      "disconnected": {
        "words": [
          "alienated",
          "aloof",
          "apathetic",
          "bored",
          "cold",
          "detached",
          "distant",
          "distracted",
          "indifferent",
          "numb",
          "removed",
          "uninterested",
          "withdrawn"
        ]
      },
      "disquiet": {
        "words": [
          "agitated",
          "alarmed",
          "discombobulated",
          "disconcerted",
          "disturbed",
          "perturbed",
          "rattled",
          "restless",
          "shocked",
          "startled",
          "surprised",
          "troubled",
          "turbulent",
          "turmoil",
          "uncomfortable",
          "uneasy",
          "unnerved",
          "unsettled",
          "upset"
        ]
      },
      "embarrassed": {
        "words": [
          "ashamed",
          "chagrined",
          "flustered",
          "guilty",
          "mortified",
          "self‐conscious"
        ]
      },
      "fatigue": {
        "words": [
          "beat",
          "burnt out",
          "depleted",
          "exhausted",
          "lethargic",
          "listless",
          "sleepy",
          "tired",
          "weary",
          "worn out"
        ]
      },
      "pain": {
        "words": [
          "agony",
          "anguished",
          "bereaved",
          "devastated",
          "grief",
          "heartbroken",
          "hurt",
          "lonely",
          "miserable",
          "regretful",
          "remorseful"
        ]
      },
      "sad": {
        "words": [
          "dejected",
          "depressed",
          "despair",
          "despondent",
          "disappointed",
          "discouraged",
          "disheartened",
          "forlorn",
          "gloomy",
          "heavy-hearted",
          "hopeless",
          "melancholy",
          "unhappy",
          "wretched"
        ]
      },
      "tense": {
        "words": [
          "anxious",
          "cranky",
          "distraught",
          "distressed",
          "edgy",
          "fidgety",
          "frazzled",
          "irritable",
          "jittery",
          "nervous",
          "overwhelmed",
          "restless",
          "stressed out"
        ]
      },
      "vulnerable": {
        "words": [
          "fragile",
          "guarded",
          "helpless",
          "insecure",
          "leery",
          "reserved",
          "sensitive",
          "shaky"
        ]
      },
      "yearning": {
        "words": [
          "envious",
          "jealous",
          "longing",
          "nostalgic",
          "pining",
          "wistful"
        ]
      }
    }
  }



# FEELINGS.each{|key, val| 
#     # puts "#{key} is #{val}"
#     val.each {|key2, val2|
#         # puts key2

#         # if key2 != "color"
#         #   puts key2[:word]
#         # end
#         # puts key
#         # puts val
#         val2[:words].map {|word|
#             test = {}
#             test[:name] = word
#             test[:main_word] = key2
#             test[:needs_condition] = key
#         puts test
#         }
#     }
# }
