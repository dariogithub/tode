testing
testInstanceSelfRef
    | result x |
    result := self runInstanceSelfRef.
    self assert: (x := result asString) = '[90 sz:0 cls: 74241 SmallInteger] 11'