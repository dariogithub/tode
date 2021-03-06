as yet unclassified
haloRunBlock: aTDTopezServer
  | directory |
  directory := Dictionary new.
  directory
    at: 'st'
      put: [ :parentNode :nodeName | 
          TDPluggableLeafNode new
            name: nodeName;
            parent: parentNode;
            getContentsBlock: [ :theNode | theNode topez serverStatus evaluateString ];
            setContentsBlock: [ :theNode :newContents | theNode topez serverStatus evaluateString: newContents ];
            extensionBlock: [ :theNode | theNode class executableExtension ];
            renderAttributeBlock: [ :theNode | theNode class smalltalkTextAttributes ];
            yourself ];
    at: 'result'
      put: [ :parentNode :nodeName | 
          (parentNode topez serverStatus evaluateStringResult asTDObjectNode: parentNode topez: parentNode topez aspect: #'view')
            name: nodeName;
            yourself ];
    yourself.
  ^ [ :parentNode | 
  TDObjectNode new
    name: '.run';
    basicContents: directory;
    parent: parentNode;
    readMe: self readMeRun;
    elementExtensionBlock: [ :theNode :elementName | theNode class objectExtension ];
    elementRenderAttributeBlock: [ :theNode :elementName | theNode class objectTextAttributes ];
    listBlock: [ :theNode | theNode basicContents keys sorted ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | block |
          block := theNode basicContents at: elementName ifAbsent: absentBlock.
          block value: theNode value: elementName ];
    yourself ]