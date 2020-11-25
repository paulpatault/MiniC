let get_pos (lexbuf: Lexing.lexbuf) =
  let curr_p = lexbuf.lex_curr_p in
  let line = curr_p.Lexing.pos_lnum in
  let col = curr_p.Lexing.pos_cnum - curr_p.Lexing.pos_bol in
  (line, col)

