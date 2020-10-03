***Test Cases***
Teste do novo formato do FOR
    Velho formato do FOR de listas
    Novo formato do FOR de listas

Teste de FOR aninhado
    Cria cadastro de produtos (FOR aninhado)

Teste de FOR usando varias variaveis
    Criar dicionario de traducoes

Teste de FOR com numeracao da lista
    For com numeracao

Teste mais opcoes IN RANGE
    Tradicional
    Apenas quantidade de lacos informada (limite superior)
    Aritimetico
    Intervalos especificos




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


### FOR ANINHADO
Cria cadastro de produtos (FOR aninhado)
    FOR    ${produto}   IN     camiseta    bermuda    blusa
        Imprime tamanhos para o produto     ${produto}
    END

Imprime tamanhos para o produto
    [Arguments]     ${produto}
    FOR    ${tamanho}   IN     P    M    G
        Log     Produto: ${produto} - Tamanho: ${tamanho}
    END


### FOR COM VARIAS VARIAVEIS
Criar dicionario de traducoes
    FOR    ${index}    ${english}    ${finnish}    ${portuguese}    IN
    ...     1           cat             kissa       gato
    ...     2           dog             koira       cachorro
    ...     3           horse           hevonen     cavalo
        Log     Animal ${index}:\nEm ingles: ${english}\nEm Finlandes: ${finnish}\nEm Portugues: ${portuguese}
    END


For com numeracao
    FOR    ${index}    ${item}  IN ENUMERATE     P    M    G   GG  XG  XXG
        Log     Item da lista: ${item} - Posicao do item na lista: ${index}
    END


Tradicional
    [Documentation]     Percorre de 1 ate 10
    FOR    ${index}     IN RANGE    1   11
        Log     ${index}
    END

Apenas quantidade de lacos informada (limite superior)
    [Documentation]     Percorre de 0 ate 9
    FOR    ${index}     IN RANGE    10
        Log     ${index}
    END

Aritimetico
    [Documentation]     Percorre de 0 ate 5
    ${var}      Set Variable    ${5}
    FOR    ${index}     IN RANGE    ${var} + 1
        Log     ${index}
    END

Intervalos especificos
    [Documentation]     Percorre de 0 ate 30, pulando de 5 em 5
    FOR    ${index}     IN RANGE    0   31  5
        Log     ${index}
    END