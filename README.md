# dotkeep

Um script Bash simples para automação de backup de dotfiles e arquivos de configuração no Linux.

## 📌 Sobre o projeto
Toda vez que formato a máquina ou preciso configurar um novo ambiente Linux, o processo de reconfigurar meus dotfiles (.bashrc, aliases, etc.) exige tempo. O `dotkeep` automatiza isso centralizando as cópias de segurança em um único diretório e mantendo um histórico detalhado através de logs.

## 🛠️ O que o script faz
- Cria a pasta de backup automaticamente caso ela não exista.
- Verifica se cada arquivo da lista realmente existe no sistema antes de tentar copiar.
- Mostra um feedback visual colorido diretamente no terminal (`[OK]` e `[ERRO]`).
- Registra histórico de execuções com data e hora em um arquivo `backup.log`.

## 🚀 Como usar

### 1. Clonar o repositório
```bash
git clone [https://github.com/JohnCodedSA/dotkeep.git](https://github.com/JohnCodedSA/dotkeep.git)
cd dotkeep

### 2. Dar permissão de execução
chmod +x dotkeep.sh

### 3. Executar o script
./dotkeep.sh
