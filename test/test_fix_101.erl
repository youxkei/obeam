-module(test_fix_101).

main(X) ->
    case X of
        {abc, Foo, Bar} -> ok
    end.
