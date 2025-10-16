#!/bin/bash

# Script de instalación de dotfiles
# Autor: Pedro Jimenez
# Descripción: Instala y configura Oh My Zsh, Powerlevel10k y plugins

set -e  # Salir si hay algún error

echo "🚀 Iniciando instalación de dotfiles..."

# Colores para el output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Función para imprimir mensajes
print_step() {
    echo -e "${BLUE}==>${NC} $1"
}

print_success() {
    echo -e "${GREEN}✓${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}!${NC} $1"
}

# 1. Backup de configuración actual
print_step "Haciendo backup de la configuración actual..."
if [ -f ~/.zshrc ]; then
    cp ~/.zshrc ~/.zshrc.backup.$(date +%Y%m%d_%H%M%S)
    print_success "Backup creado"
else
    print_warning "No existe .zshrc previo"
fi

# 2. Instalar Oh My Zsh si no está instalado
print_step "Verificando Oh My Zsh..."
if [ ! -d ~/.oh-my-zsh ]; then
    print_step "Instalando Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    print_success "Oh My Zsh instalado"
else
    print_success "Oh My Zsh ya está instalado"
fi

# 3. Instalar Powerlevel10k
print_step "Verificando Powerlevel10k..."
if [ ! -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k ]; then
    print_step "Instalando Powerlevel10k..."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    print_success "Powerlevel10k instalado"
else
    print_success "Powerlevel10k ya está instalado"
fi

# 4. Instalar plugin zsh-autosuggestions
print_step "Verificando zsh-autosuggestions..."
if [ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ]; then
    print_step "Instalando zsh-autosuggestions..."
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    print_success "zsh-autosuggestions instalado"
else
    print_success "zsh-autosuggestions ya está instalado"
fi

# 5. Instalar plugin zsh-syntax-highlighting
print_step "Verificando zsh-syntax-highlighting..."
if [ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting ]; then
    print_step "Instalando zsh-syntax-highlighting..."
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    print_success "zsh-syntax-highlighting instalado"
else
    print_success "zsh-syntax-highlighting ya está instalado"
fi

# 6. Instalar fuente Nerd Font
print_step "Verificando Nerd Font..."
if ! brew list font-meslo-lg-nerd-font &>/dev/null; then
    print_step "Instalando Meslo Nerd Font..."
    brew install font-meslo-lg-nerd-font
    print_success "Meslo Nerd Font instalado"
else
    print_success "Meslo Nerd Font ya está instalado"
fi

# 7. Copiar configuración
print_step "Copiando configuración..."
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cp "$DOTFILES_DIR/.zshrc" ~/.zshrc
print_success "Configuración copiada"

# 8. Aplicar configuración
print_step "Aplicando configuración..."
# No podemos hacer source desde bash, así que solo mostramos el mensaje
print_success "Instalación completada"

echo ""
echo -e "${GREEN}✨ ¡Instalación completada exitosamente!${NC}"
echo ""
echo "📝 Próximos pasos:"
echo "1. Reinicia tu terminal o ejecuta: source ~/.zshrc"
echo "2. La primera vez que abras el terminal, se ejecutará el asistente de Powerlevel10k"
echo "3. Configura tu editor/IDE para usar la fuente 'MesloLGM Nerd Font Mono'"
echo ""
echo "Para reconfigurar Powerlevel10k en cualquier momento: p10k configure"
echo ""
