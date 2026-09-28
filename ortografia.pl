% Base de conocimientos y Motor de Inferencia
evaluar(Palabra) :- 
    diagnostico(Palabra, Resultado),
    writeln(Resultado).

% Reglas de ejemplo (recuerda escribir las palabras en minúscula)
diagnostico(cancion, '¡Excelente! La palabra está escrita correctamente.').
diagnostico(cansion, 'Error: Las palabras que terminan en -ción se escriben con C si derivan de palabras terminadas en -to, -tor (ej. canto -> cancion).').
diagnostico(desicion, 'Error: Las palabras terminadas en -sión se escriben con S cuando derivan de verbos terminados en -der, -dir (ej. decidir -> decision).').
diagnostico(_, 'La palabra no está en la base de conocimientos o revisa tu escritura.').

% Regla para palabras que llevan H
diagnostico(aver, 'Error: La palabra correcta es "haber", con H.').
diagnostico(haber, '¡Excelente! La palabra está escrita correctamente.').

diagnostico(acer, 'Error: La palabra correcta es "hacer", con H.').
diagnostico(hacer, '¡Excelente! La palabra está escrita correctamente.').

diagnostico(ola, 'Error: Si te refieres al saludo, se escribe "hola", con H.').
diagnostico(hola, '¡Excelente! La palabra está escrita correctamente.').

%Sisi ejemplo
