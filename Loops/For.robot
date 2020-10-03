***Test Cases***
Teste do novo formato do FOR
    #Velho formato do FOR de listas
    Novo formato do FOR de listas


***Keywords***
#### NOVO FORMATO
Velho formato do FOR de listas
    :FOR    ${animal}   IN    gato  cachorro  cavalo
    \   Log  O animal desse volta é: ${animal}!
    \   Log  Vamos para o proximo animal da lista...

Novo formato do FOR de listas
    FOR    ${animal}   IN     gato    cachorro    cavalo
       Log   O animal desse volta é: ${animal}!
       Log   Vamos para o proximo animal da lista...
    END