:- initialization(main).

planeta_anos("Terra", 1).
planeta_anos("Mercurio",0.2408467).
planeta_anos("Venus", 0.61519726).
planeta_anos("Marte", 1.8808158).
planeta_anos("Jupter", 11.862615).
planeta_anos("Saturno", 29.447498).
planeta_anos("Urano", 84.016846).
planeta_anos("Netuno", 164.79132).

transforma_em_anos(Segundos, Anos) :-
	Anos is Segundos / 31557600 .

lerInt(Number) :- 
read_line_to_codes(user_input, Codes),
string_to_atom(Codes, Atom),
atom_number(Atom, Number).

main:-
	read_line_to_string(user_input, Planeta),
	lerInt(Segundos),
	planeta_anos(Planeta, X),
	transforma_em_anos(Segundos, AnosTerrestres),
	AnosPlaneta is AnosTerrestres * X,
	Aux is round(AnosPlaneta),
	string_concat(Aux, " Anos", Saida),
	writeln(Saida).
