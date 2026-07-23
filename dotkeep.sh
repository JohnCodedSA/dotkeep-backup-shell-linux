#!/usr/bin/env bash

# ==============================================================================
# dotkeep - Script simples para backup de dotfiles
# ==============================================================================

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Diretório onde o backup será salvo
BACKUP_DIR="$HOME/dotfiles_backup"
LOG_FILE="$BACKUP_DIR/backup.log"

# Lista de arquivos/pastas para copiar (adicione os seus aqui)
FILES_TO_BACKUP=(
    "$HOME/.bashrc"
    "$HOME/.zshrc"
    "$HOME/.gitconfig"
    "$HOME/.config/neofetch"
)

# Cria o diretório de backup se não existir
if [ ! -d "$BACKUP_DIR" ]; then
    echo -e "${YELLOW}[i] Criando diretório de backup em: $BACKUP_DIR${NC}"
    mkdir -p "$BACKUP_DIR"
fi

echo "=========================================="
echo " Iniciando Backup: $(date '+%Y-%m-%d %H:%M:%S')"
echo "=========================================="

# Loop pelos arquivos
for item in "${FILES_TO_BACKUP[@]}"; do
    if [ -e "$item" ]; then
        cp -r "$item" "$BACKUP_DIR/"
        echo -e "${GREEN}[OK]${NC} Copiado: $item"
        echo "$(date '+%Y-%m-%d %H:%M:%S') - SUCESSO: $item" >> "$LOG_FILE"
    else
        echo -e "${RED}[ERRO]${NC} Arquivo não encontrado: $item"
        echo "$(date '+%Y-%m-%d %H:%M:%S') - FALHA: $item" >> "$LOG_FILE"
    fi
done

echo -e "\n${GREEN}Backup concluído! Arquivos salvos em:${NC} $BACKUP_DIR"
