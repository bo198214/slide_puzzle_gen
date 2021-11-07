from pyddl import Domain, Problem, Action, neg, planner

verbose=True
domain = Domain((
    Action('move-sq-s'
           , parameters=(('tile','?t'), ('h_pos', '?x1'), ('v_pos', '?y1'), ('h_pos', '?x2'), ('v_pos', '?y2'), ('v_pos', '?ys'))
           , preconditions=(('type_sq', '?t'),
                            ('at', '?t', '?x1', '?y1'), ('at', '?t', '?x2', '?y1'), ('at', '?t', '?x1', '?y2'),
                            ('at', '?t', '?x2', '?y2'),
                            ('adjns', '?y1', '?y2'), ('adjwe', '?x1', '?x2'),
                            ('adjns', '?y2', '?ys'),
                            ('empty', '?x1', '?ys'), ('empty', '?x2', '?ys')
                            )
           , effects=(
            neg(('at', '?t', '?x1', '?y1')), ('empty', '?x1', '?y1'), neg(('at', '?t', '?x2', '?y1')),
            ('empty', '?x2', '?y1'),
            ('at', '?t', '?x1', '?ys'), neg(('empty', '?x1', '?ys')), ('at', '?t', '?x2', '?ys'),
            neg(('empty', '?x2', '?ys'))
        )
           )
    , Action('move-sq-n'
             , parameters=(('tile','?t'), ('h_pos', '?x1'), ('v_pos', '?y1'), ('h_pos', '?x2'), ('v_pos', '?y2'), ('v_pos', '?yn'))
             , preconditions=(('type_sq', '?t'),
                              ('at', '?t', '?x1', '?y1'), ('at', '?t', '?x2', '?y1'), ('at', '?t', '?x1', '?y2'),
                              ('at', '?t', '?x2', '?y2'),
                              ('adjns', '?y1', '?y2'), ('adjwe', '?x1', '?x2'),
                              ('adjns', '?yn', '?y1'),
                              ('empty', '?x1', '?yn'), ('empty', '?x2', '?yn')
                              )
             , effects=(
            neg(('at', '?t', '?x1', '?y2')), ('empty', '?x1', '?y2'), neg(('at', '?t', '?x2', '?y2')),
            ('empty', '?x2', '?y2'),
            ('at', '?t', '?x1', '?yn'), neg(('empty', '?x1', '?yn')), ('at', '?t', '?x2', '?yn'),
            neg(('empty', '?x2', '?yn'))
        )
             )
    , Action('move-sq-e'
             , parameters=(('tile','?t'), ('h_pos', '?x1'), ('v_pos', '?y1'), ('h_pos', '?x2'), ('v_pos', '?y2'), ('h_pos', '?xe'))
             , preconditions=(('type_sq', '?t'),
                              ('at', '?t', '?x1', '?y1'), ('at', '?t', '?x2', '?y1'), ('at', '?t', '?x1', '?y2'),
                              ('at', '?t', '?x2', '?y2'),
                              ('adjns', '?y1', '?y2'), ('adjwe', '?x1', '?x2'),
                              ('adjwe', '?x2', '?xe'),
                              ('empty', '?xe', '?y1'), ('empty', '?xe', '?y2')
                              )
             , effects=(
            neg(('at', '?t', '?x1', '?y1')), ('empty', '?x1', '?y1'), neg(('at', '?t', '?x1', '?y2')),
            ('empty', '?x1', '?y2'),
            ('at', '?t', '?xe', '?y1'), neg(('empty', '?xe', '?y1')), ('at', '?t', '?xe', '?y2'),
            neg(('empty', '?xe', '?y2'))
        )
             )
    , Action('move-sq-w'
             , parameters=(('tile','?t'), ('h_pos', '?x1'), ('v_pos', '?y1'), ('h_pos', '?x2'), ('v_pos', '?y2'), ('h_pos', '?xw'))
             , preconditions=(('type_sq', '?t'),
                              ('at', '?t', '?x1', '?y1'), ('at', '?t', '?x2', '?y1'), ('at', '?t', '?x1', '?y2'),
                              ('at', '?t', '?x2', '?y2'),
                              ('adjns', '?y1', '?y2'), ('adjwe', '?x1', '?x2'),
                              ('adjwe', '?xw', '?x1'),
                              ('empty', '?xw', '?y1'), ('empty', '?xw', '?y2')
                              )
             , effects=(
            neg(('at', '?t', '?x2', '?y1')), ('empty', '?x2', '?y1'), neg(('at', '?t', '?x2', '?y2')),
            ('empty', '?x2', '?y2'),
            ('at', '?t', '?xw', '?y1'), neg(('empty', '?xw', '?y1')), ('at', '?t', '?xw', '?y2'),
            neg(('empty', '?xw', '?y2'))
        )
             )
    , Action('move-v2-s'
             , parameters=(('tile','?t'), ('h_pos', '?x'), ('v_pos', '?y1'), ('v_pos', '?y2'), ('v_pos', '?ys'))
             , preconditions=(('type_v2', '?t'),
                              ('at', '?t', '?x', '?y1'), ('at', '?t', '?x', '?y2'),
                              ('adjns', '?y1', '?y2'), ('adjns', '?y2', '?ys'),
                              ('empty', '?x', '?ys'))

             , effects=(neg(('at', '?t', '?x', '?y1')), ('empty', '?x', '?y1'), ('at', '?t', '?x', '?ys'),
                        neg(('empty', '?x', '?ys')))
             )
    , Action('move-v2-n'
             , parameters=(('tile','?t'), ('h_pos', '?x'), ('v_pos', '?yn'), ('v_pos', '?y1'), ('v_pos', '?y2'))
             , preconditions=(('type_v2', '?t'),
                              ('at', '?t', '?x', '?y1'), ('at', '?t', '?x', '?y2'),
                              ('adjns', '?yn', '?y1'), ('adjns', '?y1', '?y2'),
                              ('empty', '?x', '?yn'))

             , effects=(neg(('at', '?t', '?x', '?y2')), ('empty', '?x', '?y2'), ('at', '?t', '?x', '?yn'),
                        neg(('empty', '?x', '?yn')))
             )
    , Action('move-v2-w'
             , parameters=(('tile','?t'), ('h_pos', '?x'), ('h_pos', '?xw'), ('v_pos', '?y1'), ('v_pos', '?y2'))
             , preconditions=(('type_v2', '?t'),
                              ('at', '?t', '?x', '?y1'), ('at', '?t', '?x', '?y2'),
                              ('adjns', '?y1', '?y2'), ('adjwe', '?xw', '?x'),
                              ('empty', '?xw', '?y1'), ('empty', '?xw', '?y2'))
             , effects=(neg(('at', '?t', '?x', '?y1')), ('empty', '?x', '?y1'), neg(('at', '?t', '?x', '?y2')),
                        ('empty', '?x', '?y2'),
                        ('at', '?t', '?xw', '?y1'), neg(('empty', '?xw', '?y1')), ('at', '?t', '?xw', '?y2'),
                        neg(('empty', '?xw', '?y2')))
             )
    , Action('move-v2-e'
             , parameters=(('tile','?t'), ('h_pos', '?x'), ('h_pos', '?xe'), ('v_pos', '?y1'), ('v_pos', '?y2'))
             , preconditions=(('type_v2', '?t'),
                              ('at', '?t', '?x', '?y1'), ('at', '?t', '?x', '?y2'),
                              ('adjns', '?y1', '?y2'), ('adjwe', '?x', '?xe'),
                              ('empty', '?xe', '?y1'), ('empty', '?xe', '?y2'))
             , effects=(neg(('at', '?t', '?x', '?y1')), ('empty', '?x', '?y1'), neg(('at', '?t', '?x', '?y2')),
                        ('empty', '?x', '?y2'),
                        ('at', '?t', '?xe', '?y1'), neg(('empty', '?xe', '?y1')), ('at', '?t', '?xe', '?y2'),
                        neg(('empty', '?xe', '?y2')))
             )
    , Action('move-h2-e'
             , parameters=(('tile','?t'), ('h_pos', '?x1'), ('h_pos', '?x2'), ('h_pos', '?xe'), ('v_pos', '?y'))
             , preconditions=(('type_h2', '?t'),
                              ('at', '?t', '?x1', '?y'), ('at', '?t', '?x2', '?y'),
                              ('adjwe', '?x1', '?x2'), ('adjwe', '?x2', '?xe'),
                              ('empty', '?xe', '?y'))

             , effects=(neg(('at', '?t', '?x1', '?y')), ('empty', '?x1', '?y'), ('at', '?t', '?xe', '?y'),
                        neg(('empty', '?xe', '?y')))
             )
    , Action('move-h2-w'
             , parameters=(('tile','?t'), ('h_pos', '?xw'), ('h_pos', '?x1'), ('h_pos', '?x2'), ('v_pos', '?y'))
             , preconditions=(('type_h2', '?t'),
                              ('at', '?t', '?x1', '?y'), ('at', '?t', '?x2', '?y'),
                              ('adjwe', '?xw', '?x1'), ('adjwe', '?x1', '?x2'),
                              ('empty', '?xw', '?y'))

             , effects=(neg(('at', '?t', '?x2', '?y')), ('empty', '?x2', '?y'), ('at', '?t', '?xw', '?y'),
                        neg(('empty', '?xw', '?y')))
             )
    , Action('move-h2-n'
             , parameters=(('tile','?t'), ('h_pos', '?x1'), ('h_pos', '?x2'), ('v_pos', '?y'), ('v_pos', '?yn'))
             , preconditions=(('type_h2', '?t'),
                              ('at', '?t', '?x1', '?y'), ('at', '?t', '?x2', '?y'),
                              ('adjwe', '?x1', '?x2'), ('adjns', '?yn', '?y'),
                              ('empty', '?x1', '?yn'), ('empty', '?x2', '?yn'))
             , effects=(neg(('at', '?t', '?x1', '?y')), ('empty', '?x1', '?y'), neg(('at', '?t', '?x2', '?y')),
                        ('empty', '?x2', '?y'),
                        ('at', '?t', '?x1', '?yn'), neg(('empty', '?x1', '?yn')), ('at', '?t', '?x2', '?yn'),
                        neg(('empty', '?x2', '?yn')))
             )
    , Action('move-h2-s'
             , parameters=(('tile','?t'), ('h_pos', '?x1'), ('h_pos', '?x2'), ('v_pos', '?y'), ('v_pos', '?ys'))
             , preconditions=(('type_h2', '?t'),
                              ('at', '?t', '?x1', '?y'), ('at', '?t', '?x2', '?y'),
                              ('adjwe', '?x1', '?x2'), ('adjns', '?y', '?ys'),
                              ('empty', '?x1', '?ys'), ('empty', '?x2', '?ys'))
             , effects=(neg(('at', '?t', '?x1', '?y')), ('empty', '?x1', '?y'), neg(('at', '?t', '?x2', '?y')),
                        ('empty', '?x2', '?y'),
                        ('at', '?t', '?x1', '?ys'), neg(('empty', '?x1', '?ys')), ('at', '?t', '?x2', '?ys'),
                        neg(('empty', '?x2', '?ys')))
             )
    , Action('move-o-e'
             , parameters=(('tile','?t'), ('h_pos', '?x'), ('h_pos', '?xe'), ('v_pos', '?y'))
             ,
             preconditions=(('type_o', '?t'), ('at', '?t', '?x', '?y'), ('adjwe', '?x', '?xe'), ('empty', '?xe', '?y'))
             , effects=(('at', '?t', '?xe', '?y'), neg(('empty', '?xe', '?y')), ('empty', '?x', '?y'),
                        neg(('at', '?t', '?x', '?y')))
             )
    , Action('move-o-w'
             , parameters=(('tile','?t'), ('h_pos', '?x'), ('h_pos', '?xw'), ('v_pos', '?y'))
             ,
             preconditions=(('type_o', '?t'), ('at', '?t', '?x', '?y'), ('adjwe', '?xw', '?x'), ('empty', '?xw', '?y'))
             , effects=(('at', '?t', '?xw', '?y'), neg(('empty', '?xw', '?y')), ('empty', '?x', '?y'),
                        neg(('at', '?t', '?x', '?y')))
             )
    , Action('move-o-n'
             , parameters=(('tile','?t'), ('h_pos', '?x'), ('v_pos', '?y'), ('v_pos', '?yn'))
             ,
             preconditions=(('type_o', '?t'), ('at', '?t', '?x', '?y'), ('adjns', '?yn', '?y'), ('empty', '?x', '?yn'))
             , effects=(('at', '?t', '?x', '?yn'), neg(('empty', '?x', '?yn')), ('empty', '?x', '?y'),
                        neg(('at', '?t', '?x', '?y')))
             )
    , Action('move-o-s',
             parameters=(('tile','?t'), ('h_pos', '?x'), ('v_pos', '?y'), ('v_pos', '?ys')),
             preconditions=(('type_o', '?t'), ('at', '?t', '?x', '?y'), ('adjns', '?y', '?ys'), ('empty', '?x', '?ys')),
             effects=(('at', '?t', '?x', '?ys'), neg(('empty', '?x', '?ys')), ('empty', '?x', '?y'),
                        neg(('at', '?t', '?x', '?y')))
             )
))

problem = Problem(
    domain,
    {
        "h_pos": ('h1', 'h2','h3','h4'),
        "v_pos": ('v1','v2','v3','v4','v5'),
        "tile": ('th','tv1','tv2','tv3','tv4','tsq','to1','to2','to3','to4')
    },
    init=(
        ('adjwe', 'h1', 'h2'), ('adjwe', 'h2', 'h3'), ('adjwe', 'h3', 'h4'),
        ('adjns', 'v1', 'v2'), ('adjns', 'v2', 'v3'), ('adjns', 'v3', 'v4'), ('adjns', 'v4', 'v5'),

        ('type_o', 'to1'), ('type_o', 'to2'), ('type_o', 'to3'), ('type_o', 'to4'),
        ('type_v2', 'tv1'), ('type_v2', 'tv2'), ('type_v2', 'tv3'), ('type_v2', 'tv4'),
        ('type_h2', 'th'),
        ('type_sq', 'tsq'),

        ('at', 'tv1', 'h1', 'v1'), ('at', 'tsq', 'h2', 'v1'), ('at', 'tsq', 'h3', 'v1'), ('at', 'tv2', 'h4', 'v1'),
        ('at', 'tv1', 'h1', 'v2'), ('at', 'tsq', 'h2', 'v2'), ('at', 'tsq', 'h3', 'v2'), ('at', 'tv2', 'h4', 'v2'),
        ('empty', 'h1', 'v3'), ('at', 'th', 'h2', 'v3'), ('at', 'th', 'h3', 'v3'), ('empty', 'h4', 'v3'),
        ('at', 'tv3', 'h1', 'v4'), ('at', 'to1', 'h2', 'v4'), ('at', 'to2', 'h3', 'v4'), ('at', 'tv4', 'h4', 'v4'),
        ('at', 'tv3', 'h1', 'v5'), ('at', 'to3', 'h2', 'v5'), ('at', 'to4', 'h3', 'v5'), ('at', 'tv4', 'h4', 'v5')
    ),
    goal=(
        (('at','tsq','h2','v5'), ('at','tsq','h3','v5'), ('at','tsq','h2','v4'), ('at','tsq','h3','v4'))
    )
)

plan = planner(problem, verbose=verbose)
if plan is None:
    print('No Plan!')
else:
    for action in plan:
        print(action)
