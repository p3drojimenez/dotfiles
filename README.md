# Dotfiles

Mi configuración personal de terminal y herramientas de desarrollo.

## 🚀 Características

- **Oh My Zsh** - Framework para gestión de zsh
- **Powerlevel10k** - Tema moderno y rápido para el prompt
- **Plugins útiles**:
  - `zsh-autosuggestions` - Sugerencias automáticas mientras escribes
  - `zsh-syntax-highlighting` - Resaltado de sintaxis en tiempo real
  - Git, Docker, npm, yarn, node - Atajos y autocompletado

## 📦 Instalación

### 1. Instalar Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 2. Instalar Powerlevel10k

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### 3. Instalar Plugins

```bash
# Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### 4. Instalar Fuente Nerd Font

```bash
brew install font-meslo-lg-nerd-font
```

### 5. Copiar configuración

```bash
cp ~/.zshrc ~/.zshrc.backup  # Backup de tu configuración actual (opcional)
cp ~/dotfiles/.zshrc ~/.zshrc
```

### 6. Aplicar cambios

```bash
source ~/.zshrc
```

## 🎨 Configurar Powerlevel10k

La primera vez que abras el terminal después de la instalación, se ejecutará automáticamente el asistente de configuración de Powerlevel10k.

Si quieres reconfigurarlo más tarde:

```bash
p10k configure
```

## ⚙️ Configuración de Cursor/VSCode

Agrega estas líneas a tu `settings.json`:

```json
{
  "terminal.integrated.fontFamily": "MesloLGM Nerd Font Mono",
  "terminal.integrated.fontSize": 14,
  "terminal.integrated.defaultProfile.osx": "zsh",
  "terminal.integrated.wordWrap": "on"
}
```

Ubicación del archivo:
- **Cursor**: `~/Library/Application Support/Cursor/User/settings.json`
- **VSCode**: `~/Library/Application Support/Code/User/settings.json`

## 📝 Aliases Disponibles

### General
- `cdc` - Ir a la carpeta de código (`~/code`)
- `cls` - Limpiar terminal

### SaaS Vue
- `saas` - Abrir el workspace de SaaS Vue en Cursor
- `saas-root` - Navegar al root del proyecto SaaS
- `saas-vue` - Navegar al directorio de SaaS Vue

## 🔄 Sincronización

Para mantener tu configuración actualizada:

### Guardar cambios
```bash
cp ~/.zshrc ~/dotfiles/.zshrc
cd ~/dotfiles
git add .zshrc
git commit -m "Update zsh configuration"
git push
```

### Aplicar cambios desde el repo
```bash
cp ~/dotfiles/.zshrc ~/.zshrc
source ~/.zshrc
```

## 🛠️ Personalización

### Agregar nuevos alias

Edita el archivo `~/.zshrc` en la sección de ALIASES:

```bash
# En ~/.zshrc
alias mi-alias="comando"
```

### Agregar nuevos plugins

Añade el plugin al array de plugins en `~/.zshrc`:

```bash
plugins=(
  git
  zsh-autosuggestions
  # ... otros plugins
  tu-nuevo-plugin
)
```

Lista de plugins disponibles: [Oh My Zsh Plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins)

## 📚 Recursos

- [Oh My Zsh Documentation](https://github.com/ohmyzsh/ohmyzsh/wiki)
- [Powerlevel10k Documentation](https://github.com/romkatv/powerlevel10k)
- [Nerd Fonts](https://www.nerdfonts.com/)

## 🐛 Troubleshooting

### Los iconos no se ven correctamente
Asegúrate de que tu terminal esté usando la fuente Nerd Font (`MesloLGM Nerd Font Mono`).

### El prompt es muy lento
Ejecuta `p10k configure` y elige opciones más ligeras, o desactiva algunos elementos del prompt.

### Los plugins no funcionan
Verifica que los plugins estén instalados correctamente en:
```bash
ls ~/.oh-my-zsh/custom/plugins/
```

### Revertir cambios
Si algo sale mal, restaura tu backup:
```bash
cp ~/.zshrc.backup ~/.zshrc
source ~/.zshrc
```
