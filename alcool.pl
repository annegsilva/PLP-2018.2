:- initialization(main).

lerInt(Number) :- 
read_line_to_codes(user_input, Codes),
string_to_atom(Codes, Atom),
atom_number(Atom, Number).

custo_total(Preco, Litros, Result) :- 
	Result is Preco * Litros.

main:- 
	lerInt(Alcool),
	lerInt(Gasolina),
	lerInt(Litros),
	custo_total(Gasolina, Litros, CustoGas),
	custo_total(Alcool, Litros, CustoAlcool),
	Porcent is Gasolina * 0.7,
	(Alcool < Porcent ->
		writeln(CustoAlcool);
	writeln(CustoGas)).
