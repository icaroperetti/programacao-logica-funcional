% Utilização de interface gráfica
:- use_module(library(pce)).
:- new(Dialogo, dialog('Minha Interface para Somar')),
new(Titulo, label(nome, 'Este é um Somador')),
new(Texto1, text_item('Número:')),
new(Texto2, text_item('Outro Numero:')),
new(Texto3, text_item('Resultado:')),
new(Botao1, button('Somar',message(@prolog,somar,Texto1?selection,Texto2?selection,Texto3))),
new(Botao2, button('Sair',message(Dialogo, destroy))),
send_list(Dialogo, append,[Titulo, Texto1, Texto2, Texto3, Botao1, Botao2]),
send(Dialogo, open).
somar(N1,N2,R)
:- atom_number(N1,N1c),atom_number(N2,N2c), Resultado is N1c + N2c,send(R,selection, Resultado).
