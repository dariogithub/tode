tests
testRun4
    | result x |
    result := self runRun4.
    self assert: (x := result printString) ='{ sz:8 Metaclass} Object class'