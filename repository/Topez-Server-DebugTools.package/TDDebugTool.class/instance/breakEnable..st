as yet unclassified
breakEnable: breakTokens
  "enable [break-list-index] "

  | breakReport breakRow breakNumber |
  breakTokens size = 1
    ifTrue: [ 
      "enable all breakpoints"
      ^ self gsMethodClass _enableAllBreaks ].
  breakReport := (self gsMethodClass _breakReport: false) at: 2.
  breakRow := breakReport at: (breakTokens at: 2) asNumber.
  breakNumber := breakRow at: 1.
  ^ self gsMethodClass _enableBreakNumber: breakNumber