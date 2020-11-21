let fact_code = [
  If(
    Lt(Get "n", Cst 2), 
    [Return (Cst 1)], 
    [Return ( Mul( Get "n", Call("fact", [Add(Get "n", Cst (-1))])))]
  )
]

let fact = {
  name = "fact";
  params = [("n", Int)];
  return = Int;
  locals = [];
  code = fact_code;
}

let main = {
  name = "main";
  params = [];
  return = Void;
  locals = [];
  code = [
    Putchar(
      Call("fact", [Get "PARAM"])
    )
  ];
}

let a = {
  globals=[("a", Int);("b", Int);("c", Int)];
  functions = [fact; main]
}