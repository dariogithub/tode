test proxy
testObjectClassProxy
    | result x |
    result := self runObjectClassProxy.
    self assert: (x := result printString) = '{ sz:8 Metaclass} Object class'