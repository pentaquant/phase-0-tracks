mlb_rpitchers = {
  baltimore: {
    season_stats: {
      wins: 12,
      losses: 8
    },
    relief_pitchers: [
      "B. Brach",
      "M. Givens"
    ]
  },
  seattle: {
    season_stats: {
      wins: 8,
      losses: 12
    },
    relief_pitchers: [
      "C. Flen",
      "J. Pazos"
    ]
  },
  san_francisco: {
    season_stats: {
      wins: 19,
      losses: 1
    },
    relief_pitchers: [
      "D. Law",
      "G. Kontos"
    ]
  }
}

#accessing SF relief pitchers

mlb_rpitchers[:san_francisco][:relief_pitchers]

#accessing Baltimore wins

mlb_rpitchers[:baltimore][:season_stats][:wins]

#accessing Seattle's second relief pitchers

mlb_rpitchers[:seattle][:relief_pitchers][1]

#adding a third relief pitcher to Baltimore and printing to show the addition
mlb_rpitchers[:baltimore][:relief_pitchers].push("J. Doe")
mlb_rpitchers[:baltimore][:relief_pitchers][2]


