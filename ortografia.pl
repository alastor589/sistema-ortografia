% Base de conocimientos y Motor de Inferencia
evaluar(Palabra) :- 
    diagnostico(Palabra, Resultado),
    writeln(Resultado).

% Reglas de ejemplo (recuerda escribir las palabras en minúscula)
diagnostico(cancion, '¡Excelente! La palabra está escrita correctamente.').
diagnostico(cansion, 'Error: Las palabras que terminan en -ción se escriben con C si derivan de palabras terminadas en -to, -tor (ej. canto -> cancion).').
diagnostico(desicion, 'Error: Las palabras terminadas en -sión se escriben con S cuando derivan de verbos terminados en -der, -dir (ej. decidir -> decision).').
diagnostico(_, 'La palabra no está en la base de conocimientos o revisa tu escritura.').
