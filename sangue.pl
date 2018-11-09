:- initialization(main).

compativel("o.","o.", "doar_e_receber").
compativel("o.","a.", "doar").
compativel("o.", "b.", "doar").
compativel("o.", "ab.", "doar").

compativel("a.","o.", "receber").
compativel("a.","a.", "doar_e_receber").
compativel("a.", "b.", "incompativel").
compativel("a.", "b.", "doar").

compativel("b.","o.", "receber").
compativel("b.","a.", "incompativel").
compativel("b.", "b.", "doar_e_receber").
compativel("b.", "ab.", "doar").

compativel("ab.","o.","receber").
compativel("ab.","a.","receber").
compativel("ab.", "b.", "receber").
compativel("ab.", "ab.","doar_e_receber").


main:-
	read_line_to_string(user_input, X),
	read_line_to_string(user_input, Y),
	compativel(X,Y,Compatibilidade),
	writeln(Compatibilidade).
