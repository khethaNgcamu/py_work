valid([]).
valid([Head|Tail]) :- fd_all_different(Head), valid(Tail).

sudoku(Puzzle, Solution) :-
    Solution = Puzzle,
    Puzzle = [S11, S12, S13, S14, S15, S16, S17, S18, S19,
              S21, S22, S23, S24, S25, S26, S27, S28, S29,
              S31, S32, S33, S34, S35, S36, S37, S38, S39,
              S41, S42, S43, S44, S45, S46, S47, S48, S49,
              S51, S52, S53, S54, S55, S56, S57, S58, S59,
              S61, S62, S63, S64, S65, S66, S67, S68, S69,
              S71, S72, S73, S74, S75, S76, S77, S78, S79,
              S81, S82, S83, S84, S85, S86, S87, S88, S89,
              S91, S92, S93, S94, S95, S96, S97, S98, S99],

    % Rows
    valid([[S11, S12, S13, S14, S15, S16, S17, S18, S19],
           [S21, S22, S23, S24, S25, S26, S27, S28, S29],
           [S31, S32, S33, S34, S35, S36, S37, S38, S39],
           [S41, S42, S43, S44, S45, S46, S47, S48, S49],
           [S51, S52, S53, S54, S55, S56, S57, S58, S59],
           [S61, S62, S63, S64, S65, S66, S67, S68, S69],
           [S71, S72, S73, S74, S75, S76, S77, S78, S79],
           [S81, S82, S83, S84, S85, S86, S87, S88, S89],
           [S91, S92, S93, S94, S95, S96, S97, S98, S99]]),

    % Columns
    valid([[S11, S21, S31, S41, S51, S61, S71, S81, S91],
           [S12, S22, S32, S42, S52, S62, S72, S82, S92],
           [S13, S23, S33, S43, S53, S63, S73, S83, S93],
           [S14, S24, S34, S44, S54, S64, S74, S84, S94],
           [S15, S25, S35, S45, S55, S65, S75, S85, S95],
           [S16, S26, S36, S46, S56, S66, S76, S86, S96],
           [S17, S27, S37, S47, S57, S67, S77, S87, S97],
           [S18, S28, S38, S48, S58, S68, S78, S88, S98],
           [S19, S29, S39, S49, S59, S69, S79, S89, S99]]),

    % 3x3 squares
    valid([[S11, S12, S13, S21, S22, S23, S31, S32, S33],
           [S14, S15, S16, S24, S25, S26, S34, S35, S36],
           [S17, S18, S19, S27, S28, S29, S37, S38, S39],
           [S41, S42, S43, S51, S52, S53, S61, S62, S63],
           [S44, S45, S46, S54, S55, S56, S64, S65, S66],
           [S47, S48, S49, S57, S58, S59, S67, S68, S69],
           [S71, S72, S73, S81, S82, S83, S91, S92, S93],
           [S74, S75, S76, S84, S85, S86, S94, S95, S96],
           [S77, S78, S79, S87, S88, S89, S97, S98, S99]]).
