accessing
mappingFor: aNode
	| method |
	method := self methodNode.
	method isNil ifTrue: [^aNode].
	^method mappingFor: aNode