tests
testAbort
    | result x |
    self topez level: 0.
    self pushPrintBlocks.
    result := self doNoError: [ self topez abort ].
    self assert: (x := result printString) = '[Boolean] true'