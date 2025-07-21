# delete-file
Para excluir arquivos com mais de 90 dias de um diretório usando um script shell, você pode usar o comando find em combinação com rm. O script abaixo busca por arquivos modificados há mais de 90 dias e os remove.



Explicação:

    #!/bin/bash: Especifica o interpretador de comandos como bash.
    DIRETORIO="/caminho/do/seu/diretorio": Define a variável DIRETORIO com o caminho do diretório onde você deseja procurar os arquivos. Substitua /caminho/do/seu/diretorio pelo caminho real do seu diretório.
    DIAS=90: Define a variável DIAS com o número de dias (90 neste caso).
    find "$DIRETORIO" -type f -mtime +$DIAS -print -delete:
        find "$DIRETORIO": Inicia a busca no diretório especificado.
        -type f: Especifica que estamos procurando apenas por arquivos (não diretórios ou links simbólicos).
        -mtime +$DIAS: Filtra os arquivos com base na data da última modificação. +90 significa "mais de 90 dias atrás".
        -print: Imprime o nome de cada arquivo encontrado antes de executar a ação seguinte (opcional, mas útil para verificar o que será excluído).
        -delete: Remove os arquivos encontrados. 
    echo "...": Exibe uma mensagem informando que a operação foi concluída.

Como usar:

    Salve o script em um arquivo, por exemplo, remover_arquivos.sh.
    Dê permissão de execução ao arquivo: chmod +x remover_arquivos.sh.
    Execute o script: ./remover_arquivos.sh.

Importante:

    Teste sempre em um diretório de teste antes de executar em um diretório crítico.
    Certifique-se de que o caminho do diretório e o número de dias estejam corretos antes de executar o script.
    O comando -delete remove os arquivos permanentemente, sem passar pela lixeira. Use com cuidado!
    Para uma camada extra de segurança, você pode substituir -delete por -exec rm -i {} \;, que irá solicitar confirmação antes de excluir cada arquivo.
