convenience
serverTextDo: accumulateBlock with: doitString
  | text |
  self accumulateBlocks remove: accumulateBlock ifAbsent: [  ].
  text := (accumulateBlock value: doitString value: objIn value) renderText: #'display'.
  ^ STON toString: text