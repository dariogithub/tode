as yet unclassified
buildClientElement: parentNode topez: aTopez aspect: anAspect windowId: inWindowId
  ^ self clientListElement
    topez: aTopez;
    aspect: anAspect;
    parentNode: parentNode;
    editorWindowLabel: self editorWindowLabel;
    editorWindowId: inWindowId;
    editorWindowName: self editorWindowName;
    editorWindowLocation: self editorWindowLocation;
    editorAspectSelector: #'activateListEditor';
    yourself