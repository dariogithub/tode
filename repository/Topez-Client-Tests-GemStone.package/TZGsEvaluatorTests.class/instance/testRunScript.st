testing
testRunScript
    | result x |
    result := self runRunScript.
    self assert: (x := result asString) = '[58 sz:0 cls: 74241 SmallInteger] 7'