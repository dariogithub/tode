metacello
testClassesInMetacelloProject
    self currentProject == nil
        ifTrue: [ self error: 'currentProject must be set' ].
    ^ self doInSession: [ :sess | sess testClassesInMetacelloProject: self currentProject ]