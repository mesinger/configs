map <S-J> <Action>(PreviousTab)
map <S-K> <Action>(NextTab)

map <silent> gi <Action>(GotoImplementation)
map <silent> gr <Action>(FindUsages)
map <silent> gd <Action>(GotoDeclaration)

map \ren <Action>(RenameElement)
map \gen <Action>(Generate)

map \ra <Action>(Stop) <Action>(Run)
map \sa <Action>(Stop)
map \da <Action>(Debug)
map \b <Action>(ToggleLineBreakpoint)

map \e <Action>(ShowErrorDescription)
map [e <Action>(GotoPreviousError)
map ]e <Action>(GotoNextError)

" map \r <Action>(ReformatCode)
" map gu <Action>(GotoSuperMethod)
