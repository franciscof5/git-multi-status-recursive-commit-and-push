#!/bin/bash

dir="$1"

# Se nenhum diretório for fornecido, usa o diretório atual
if [ -z "$dir" ]; then
    dir="`pwd`"
fi

# Resolve a tilde (~) e normaliza o caminho
dir=$(realpath "$dir")

# Array para armazenar diretórios com .git
repos=()

# Busca todos os diretórios que contêm .git
while IFS= read -r git_dir; do
    repo_dir=$(dirname "$git_dir")
    repos+=("$repo_dir")
done < <(find "$dir" -type d -name ".git")

# Itera sobre os diretórios encontrados
for repo in "${repos[@]}"; do
    echo -e "\033[0;35m$repo\033[0m"

    cd "$repo" || continue

    # Verifica modificações ou arquivos não rastreados
    if git status --porcelain | grep -qE "^\s*[MADRCU]"; then
        echo -e "\033[0;31mModificações encontradas!\033[0m"

        while true; do
            echo "O que deseja fazer com $repo?"
            echo "1. Ver git status"
            echo "2. Ver git diff"
            echo "3. Commit changes"
            echo "4. Push changes"
            echo "5. Pular para o próximo"

            read -p "Escolha uma opção (1-5): " choice

            case $choice in
                1) git status ;;
                2) git diff ;;
                3) 
                    read -p "Digite a mensagem do commit: " commit_msg
                    git add .
                    git commit -m "$commit_msg"
                    echo "Commit realizado!"
                    ;;
                4) 
                    git push
                    echo "Push realizado!"
                    ;;
                5) break ;;
                *) echo "Opção inválida, escolha entre 1 e 5." ;;
            esac
        done
    else
        echo "Sem modificações."
    fi

    echo
done