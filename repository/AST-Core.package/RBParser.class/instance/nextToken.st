private
nextToken
	^nextToken isNil ifTrue: [nextToken := scanner next] ifFalse: [nextToken]