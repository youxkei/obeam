open Test_util

let%expect_test "test_fix_101.beam" =
  print_ast "test_fix_101.beam";
  [%expect {|
    (Ok (
      AbstractCode (
        ModDecl (
          (AttrFile
            (line      1)
            (file      test_fix_101.erl)
            (file_line 1))
          (AttrMod
            (line        1)
            (module_name test_fix_101))
          (DeclFun
            (line          3)
            (function_name main)
            (arity         1)
            (clauses ((
              ClsFun
              (line 3)
              (patterns ((
                PatVar
                (line 3)
                (id   X))))
              (guard_sequence ())
              (body (
                ExprBody (
                  exprs ((
                    ExprCase
                    (line 4)
                    (expr (
                      ExprVar
                      (line 4)
                      (id   X)))
                    (clauses ((
                      ClsCase
                      (line 5)
                      (pattern (
                        PatTuple
                        (line 5)
                        (pats (
                          (PatLit (
                            lit (
                              LitAtom
                              (line 5)
                              (atom abc))))
                          (PatVar (line 5) (id Foo))
                          (PatVar (line 5) (id Bar))))))
                      (guard_sequence ())
                      (body (
                        ExprBody (
                          exprs ((
                            ExprLit (
                              lit (
                                LitAtom
                                (line 5)
                                (atom ok))))))))))))))))))))
          FormEof)))) |}]
