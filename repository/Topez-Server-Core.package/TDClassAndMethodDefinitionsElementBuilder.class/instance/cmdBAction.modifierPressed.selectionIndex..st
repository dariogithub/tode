as yet unclassified
cmdBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-b - browse class"

  | itemAttribute def |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object asClassDefinition.
  {def}
    editUsing:
      (TDEditorSpec topez: listElement topez editorAspect: #'definitionList').
  ^ true