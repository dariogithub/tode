as yet unclassified
test
  "test <smalltalk-node-name>"

  | suitePath suiteNode suite node testNode |
  suitePath := tokens at: 2.
  suiteNode := self topez lookup: suitePath.
  node := topez homeNode.
  testNode := node
    childNamed: 'tests'
    ifAbsent: [ 
      node
        addChildNode:
          (TDDirectoryNode new
            name: 'tests';
            readMe: 'test results';
            yourself) ].
  suite := suiteNode evaluateInContext: objIn.
  testNode addChildNode: (self suiteNode: testNode suite: suite).
  ^ self runSuite: suite testNode: testNode