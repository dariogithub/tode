as yet unclassified
port
  <topezCommand: 'port' manPage: #'portManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  | commandTokens command |
  commandTokens := tokens copyFrom: 2 to: tokens size.
  command := (commandTokens at: 1) asSymbol.
  (self
    topez: topez
    objIn: objIn
    tokens: commandTokens
    windowId: windowId) perform: command ]