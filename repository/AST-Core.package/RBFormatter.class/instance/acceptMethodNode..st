visitor-double dispatching
acceptMethodNode: aMethodNode 
	self formatMethodPatternFor: aMethodNode.
	self indentWhile: [
		self formatMethodCommentFor: aMethodNode indentBefore: true.
		self indent.
		self formatPragmasFor: aMethodNode.
		aMethodNode body statements notEmpty 
			ifTrue: [ self visitNode: aMethodNode body ] ]