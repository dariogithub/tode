as yet unclassified
implementorsOf: aString
    | aCollection selector |
    selector := aString asSymbol.
    aCollection := OrderedCollection new.
    SystemNavigation default
        allBehaviorsDo: [ :behavior | 
            (behavior includesSelector: selector)
                ifTrue: [ aCollection add: (self messageElementFor: behavior selector: selector messagePattern: aString) ] ].
    ^ TZMessageElement hierarchyOrderFor: aCollection