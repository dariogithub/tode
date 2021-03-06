as yet unclassified
dsChildren: node indent: indent level: level on: displayPolicy
  | count stream |
  (node isLeaf or: [ level = 0 ])
    ifTrue: [ ^ self ].
  count := 0.
  stream := displayPolicy stream.
  node
    childrenAndNamesDo: [ :child :nameText | 
      stream tab: indent.
      count := count + 1.
      (self listLimit > 0 and: [ count > self listLimit ])
        ifTrue: [ 
          stream
            nextPutAll: '...';
            cr.
          ^ self ].
      stream nextPutAll: nameText.
      stream nextPutAll: ' -> '.
      child dotSelfObject displayOn: displayPolicy.
      stream cr.
      self
        dsChildren: child
        indent: indent + 1
        level: level - 1
        on: displayPolicy ]