Class Base {};

class B {
    x : Int;

    getx() : Int {
        x
    };
};

Class A Inherits Base {
    (* Test types *)
    x : Int;
    y : Bool;
    z : String <- "hello world";
    b : B <- new B;

    init() : SELF_TYPE {
        {
            self;
        }
    };

    (* Test operators *)
    f(x : Int) : Int {
        (* Test . *)
        x <- x / (1 * 1 + 1 - 1 + b.getx())
    };

    (* Test expressions *)
    g(x: Int, y : Int) : Int {
        (* Test if then else and isvoid *)
        if isvoid x then
            y
        else
            (* Test let and while *)
            (let countdown : Int <- 20 in
                while 0 < countdown loop {
                    countdown <- countdown - 1;
                }
                pool
            )
        fi
    };
};
