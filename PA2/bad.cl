
(*
 *  execute "coolc bad.cl" to see the error messages that the coolc parser
 *  generates
 *
 *  execute "myparser bad.cl" to see the error messages that your parser
 *  generates
 *)

(* no error *)
class A {
};

(* error:  b is not a type identifier *)
Class b inherits A {
};

(* error:  a is not a type identifier *)
Class C inherits a {
};

(* error:  keyword inherits is misspelled *)
Class D inherts A {
};


class AA {
    x : Int;

    badmethod1() : Int {
        (* Test error in expression *)
        (x + )
    };

    badmethod2() : Int {
        ~+x
    };

    (* Test error in feature list *)
    badmethod3() : Int {
    ;
};


(* error:  closing brace is missing *)
Class E inherits A {
;
