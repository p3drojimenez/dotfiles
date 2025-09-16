
# Dotfiles

Este repositorio contiene archivos de configuración para el entorno de desarrollo en macOS/Linux.

## 📁 Estructura del Repositorio

```
dotfiles/
├── README.md       # Este archivo
└── .zshrc         # Configuración de Zsh shell
```

## 🛠️ Configuraciones Incluidas

### `.zshrc` - Configuración de Zsh Shell

Este archivo contiene:

- **Alias útiles:**
  - `cdc`: Navega rápidamente al directorio `~/code`
  - `cls`: Limpia la terminal (equivalente a `clear`)

- **Configuración de Node.js:**
  - Configuración automática de NVM (Node Version Manager)
  - PATH configurado para Node.js v20.* y herramientas relacionadas

- **Configuración de Homebrew:**
  - PATH configurado para acceder a herramientas instaladas via Homebrew

## 🚀 Instalación

### Clonar el Repositorio

```bash
git clone <url-del-repositorio> ~/dotfiles
cd ~/dotfiles
```

### Crear Enlaces Simbólicos

Para aplicar las configuraciones, crea enlaces simbólicos desde tu directorio home hacia los archivos de configuración:

```bash
# Enlazar configuración de Zsh
ln -sf ~/dotfiles/.zshrc ~/.zshrc
```

### Aplicar Cambios

Después de crear los enlaces, recarga tu shell:

```bash
source ~/.zshrc
```

## 📋 Prerequisitos

Antes de usar estas configuraciones, asegúrate de tener instalado:

- **Zsh**: Viene preinstalado en macOS Catalina+ y la mayoría de distribuciones Linux modernas
- **NVM**: Para gestión de versiones de Node.js
- **Homebrew** (macOS): Gestor de paquetes para macOS

### Instalación de Prerequisitos

```bash
# Instalar NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Instalar Homebrew (solo macOS)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## 🔧 Personalización

Puedes personalizar las configuraciones editando directamente los archivos en este repositorio. Los cambios se aplicarán automáticamente gracias a los enlaces simbólicos.

### Añadir Más Alias

Edita `.zshrc` y añade tus alias personalizados:

```bash
alias tu_alias="tu_comando"
```

## ⚠️ Notas Importantes

- Los enlaces simbólicos sobrescribirán tus archivos de configuración existentes
- Se recomienda hacer una copia de seguridad de tus configuraciones actuales antes de aplicar estos dotfiles
- Este repositorio está optimizado para macOS pero también funciona en Linux

## 🔄 Actualización

Para actualizar las configuraciones:

```bash
cd ~/dotfiles
git pull origin main
source ~/.zshrc  # Recargar configuraciones
```

## 🤝 Contribución

Si quieres añadir más configuraciones o mejorar las existentes, siéntete libre de crear un pull request.
