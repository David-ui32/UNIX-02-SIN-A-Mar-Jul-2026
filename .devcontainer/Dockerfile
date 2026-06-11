# ============================================================================
#  Dockerfile — "receta" para construir la imagen del curso
# ============================================================================
#  Un Dockerfile es un archivo de texto con instrucciones paso a paso que
#  Docker (o Codespaces) lee de arriba hacia abajo para fabricar una
#  "imagen". Una imagen es como un molde congelado de un sistema Linux
#  listo para usar; cada vez que abres el Codespace, se crea un
#  "contenedor" a partir de ese molde.
#
#  Analogía: la imagen es el PLANO, el contenedor es la CASA construida
#  con ese plano. Puedes construir muchas casas iguales a partir de un
#  solo plano, y si destruyes una casa el plano sigue intacto.
#
#  Cada instrucción (FROM, ENV, RUN...) crea una "capa". Docker guarda
#  esas capas en caché: si no cambias las primeras líneas, no las
#  reconstruye y el siguiente build es casi instantáneo.
# ============================================================================
# Docker builds images in layers.
# Each instruction creates a new layer that can be reused through cache.
# Keeping frequently changed instructions near the bottom helps Docker
# rebuild faster because unchanged layers do not need to be recreated.  
# BHB Ch.3: Containers use images as reproducible lab environments.

# ----------------------------------------------------------------------------
# FROM: imagen base sobre la que vamos a construir
# ----------------------------------------------------------------------------
# En lugar de partir de cero, partimos de la imagen oficial de Kali Linux
# en su versión "rolling" (actualización continua, siempre al día).
# Todo lo que instalemos más abajo se apila ENCIMA de esta base.
FROM kalilinux/kali-rolling:latest
#################################################3
# Kali Linux is commonly used for security, networking and UNIX labs.
# BHB Ch.3: Kali provides a ready-to-use environment for learning.
#
# Docker stores each instruction as a separate layer.
# If a layer has not changed, Docker can reuse it from cache instead of
# rebuilding it. This makes future builds faster and more efficient.

# ----------------------------------------------------------------------------
# ENV: variables de entorno permanentes dentro del contenedor
# ----------------------------------------------------------------------------
# Las variables de entorno son "ajustes globales" que cualquier programa
# del sistema puede leer. Se escriben en MAYÚSCULAS por convención.
#
#   DEBIAN_FRONTEND=noninteractive
#     Le dice al instalador de paquetes (apt) "no me hagas preguntas
#     interactivas, asume respuestas por defecto". Sin esto, algunos
#     paquetes pausarían el build esperando que pulsemos una tecla y se
#     quedaría colgado para siempre (porque no hay nadie mirando).
#
#   LANG / LC_ALL=es_ES.UTF-8
#     Configuran idioma y codificación de caracteres. UTF-8 es lo que
#     permite que acentos, ñ, €, emojis, etc. se muestren bien.
#
#   TERM=xterm-256color
#     Le indica a los programas que la terminal admite 256 colores, para
#     que vim, nvim, htop, etc. se vean con todos sus colores.
#
# La barra invertida "\" al final de cada línea significa "esto continúa
# en la línea siguiente". Solo es para legibilidad.
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color
# Environment variables define global settings available to programs.
# DEBIAN_FRONTEND=noninteractive prevents package installations from
# waiting for user input during automated builds.
# LANG and LC_ALL configure language and UTF-8 character encoding.
# TERM=xterm-256color enables advanced terminal color support.
# BHB Ch.1: Environment variables affect shell and program behavior.

# ----------------------------------------------------------------------------
# Pre-respuesta a una pregunta interactiva de Wireshark
# ----------------------------------------------------------------------------
# Wireshark/tshark PREGUNTA durante su instalación si los usuarios
# normales (no-root) deben poder capturar paquetes. Como en el contenedor
# siempre somos root, respondemos "false" POR ADELANTADO usando
# debconf-set-selections para que no detenga el build esperando input.
RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections
# Preloads an answer for the Wireshark installer.
# Without this step, the package installation could stop and wait for
# interactive input during the image build process.

# ----------------------------------------------------------------------------
# RUN: ejecutar comandos durante la construcción de la imagen
# ----------------------------------------------------------------------------
# Aquí instalamos TODO el software del curso en un solo RUN.
#
#   apt-get update          -> actualiza la lista de paquetes disponibles
#   apt-get install         -> descarga e instala los paquetes listados
#     -y                    -> responde "sí" automáticamente
#     --no-install-recommends -> instala SOLO lo esencial (no los extras
#                                sugeridos). Ahorra cientos de MB.
#
# ¿Por qué un solo RUN gigante y no 10 RUN pequeños?
# Porque CADA RUN crea una capa nueva en la imagen. Menos capas = imagen
# más pequeña, más rápida de construir y de descargar.
#
# El "&&" encadena comandos: ejecuta el siguiente SOLO SI el anterior
# terminó bien. Si algo falla, el build se detiene con error (que es lo
# que queremos: mejor un error claro que una imagen rota).
RUN apt-get update && apt-get install -y --no-install-recommends \
    \
    # apt-get update refreshes the package index from configured repositories.
    # apt-get install downloads and installs the selected packages.
    # The -y option automatically answers "yes" to prompts.
    # --no-install-recommends installs only required packages to reduce image size.
    # Using one large RUN instruction creates fewer layers and keeps the image smaller.
    
    
    # apt-get update refreshes the package index.
    # apt-get install downloads and installs the requested software.
    # === Editores de texto y shells (intérpretes de comandos) ===
    neovim \
    vim \
    zsh \
    bash-completion \
    \
    # === Herramientas de 4ta generación ===
    # Estas son las protagonistas de las Unidades 2, 3 y 4:
    perl \
    make \
    gawk \
    sed \
    grep \
# BHB Ch.2: grep, sed and gawk are core text-processing tools used to
# search, filter and transform data from the command line.
    \
    # === Utilidades básicas de UNIX ===
    # coreutils trae cat, ls, head, tail, sort, cut, tr, etc.
    # findutils trae find y xargs.
    # procps trae ps, top, kill (gestión de procesos).
    # less = paginador para leer archivos largos.
    # tree = muestra directorios como árbol.
    # jq = procesa JSON desde la línea de comandos.
    coreutils \
    findutils \
    procps \
    less \
    tree \
    jq \
    \
    # === Páginas de manual (comando `man`) ===
    # La imagen base de Kali viene sin documentación para
    # ahorrar espacio. La reinstalamos porque en el curso "man bash" o
    # "man grep" es material de consulta obligada.
    man-db \
    manpages \
    manpages-posix \
    \
    # === Red básica y utilidades de descarga ===
    curl \
    wget \
    git \
    git-lfs \
    ca-certificates \
    locales \
    \
    # === Linter (revisor automático de errores) para scripts Bash ===
    shellcheck \
    \
    # === Reconocimiento y escaneo de red ===
    # nmap = el escáner de puertos más famoso.
    # masscan = escaneo masivo de rangos grandes de IPs.
    nmap \
    masscan \
    \
    # === Captura y análisis de paquetes de red ===
    # tcpdump = capturador clásico por terminal.
    # tshark = versión de terminal de Wireshark.
    tcpdump \
    tshark \
    \
    # === Utilidades de red variadas ===
    netcat-traditional \
    socat \
    dnsutils \
    whois \
    traceroute \
    mtr-tiny \
    iproute2 \
    net-tools \
    iputils-ping \
    \
    # === Anonimato: Tor y similares ===
    # tor = cliente de la red Tor.
    # torsocks = "envoltorio" que hace pasar cualquier comando por Tor.
    # proxychains4 = encadena múltiples proxies.
    # obfs4proxy = ofusca el tráfico de Tor para evadir bloqueos.
    tor \
    torsocks \
    proxychains4 \
    obfs4proxy \
    \
    # === Cliente HTTP más legible que curl para aprender ===
    httpie \
    \
 # --- Después de instalar, activamos el idioma español ---
 # sed busca "# es_ES.UTF-8" en /etc/locale.gen y le quita el "#" para
 # activar esa línea. Luego locale-gen compila los archivos de idioma.
 && sed -i 's/# es_ES.UTF-8/es_ES.UTF-8/' /etc/locale.gen \
 && locale-gen \
 \
 # Enables the Spanish UTF-8 locale.
# sed modifies locale.gen to activate the locale.
# locale-gen generates locale files used by applications.
# Enables the Spanish UTF-8 locale.
# sed edits the configuration file and removes the comment character.
# locale-gen generates locale data so applications can display Spanish
# characters and messages correctly.
##################################################
 # --- Limpieza final: reducir el tamaño de la imagen ---
 # apt deja archivos de caché que ya no necesitamos después de instalar.
 # Borrarlos aquí (en el mismo RUN) hace la capa final más pequeña.
 # Si los borráramos en otro RUN, seguirían ocupando en la capa anterior.
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
 # Removes package cache files after installation.
# Cleaning in the same RUN instruction keeps the image smaller.
# This prevents unnecessary files from being stored in extra layers.
# Removes package cache files that are no longer needed.
# Cleaning during the same RUN instruction prevents unnecessary data
# from being stored in previous image layers.


# ----------------------------------------------------------------------------
# SHELL: qué intérprete usar en los siguientes RUN
# ----------------------------------------------------------------------------
# Por defecto Docker usa /bin/sh (un shell más limitado y antiguo). Lo
# cambiamos a bash por si agregamos más instrucciones con sintaxis
# moderna (arrays, [[ ]], etc.).
SHELL ["/bin/bash", "-c"]
# Docker normally executes RUN commands using /bin/sh.
# Bash provides additional features such as advanced scripting syntax,
# arrays and improved conditional expressions.
# BHB Ch.1: Bash is a powerful command interpreter used throughout the course.
#################################
# ----------------------------------------------------------------------------
# WORKDIR: directorio de trabajo al entrar al contenedor
# ----------------------------------------------------------------------------
# Codespaces siempre monta el código del repositorio en
# /workspaces/<nombre-del-repo>. Establecer /workspaces aquí hace que las
# terminales se abran cerca de nuestros archivos del curso.
WORKDIR /workspaces
# Sets the default working directory inside the container.
# New terminal sessions and later commands start from this location.
# Sets the default directory for future RUN instructions and terminal sessions.
# This allows users to start working directly inside the workspace location.

# Configuración de Git para el contenedor:
# - safe.directory *: confía en cualquier repo montado (necesario porque
#   /workspaces/... tiene un UID distinto al de root dentro del container).
# - init.defaultBranch main: evita warnings de "master vs main" en git init.
# - pull.rebase false: merge por defecto al hacer pull (más intuitivo)
# - git lfs install --system: registra los hooks de LFS globalmente para
#   que, si un repo los necesita, funcionen sin sorpresas.
RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system
 # Configures Git system-wide settings.
# safe.directory prevents ownership warnings in mounted repositories.
# init.defaultBranch sets "main" as the default branch name.
# pull.rebase false uses merge behavior when running git pull.
# git lfs install enables Git Large File Storage support globally.
# safe.directory allows Git to trust repositories mounted from Codespaces.
# init.defaultBranch sets "main" as the default branch for new repositories.
# pull.rebase false uses merge behavior when pulling remote changes.
# git lfs install enables support for large files managed by Git LFS.
##################################################

# ----------------------------------------------------------------------------
# CMD: comando que se ejecuta por defecto al arrancar el contenedor
# ----------------------------------------------------------------------------
# Lanza una shell bash interactiva. Codespaces la sobrescribe con su
# propia terminal integrada de VS Code, pero es buena práctica dejarla
# definida para que la imagen sea usable también con Docker puro.
# Prompt del curso para bash
# Cambiar la shell de inicio de sesión de root a zsh dentro de la imagen
RUN chsh -s /usr/bin/zsh root
# Changes the default login shell for the root user from Bash to Zsh.
# Changes the login shell for the root user.
# New terminal sessions will start using Zsh instead of Bash.

# Prompt personalizado para Cristopher Navarrete con colores llamativos
RUN cat >> /root/.zshrc <<'EOF'
autoload -U colors && colors
PROMPT='%F{#ff69b4}[Cristopher Navarrete]%f %F{#ffa500}%~%f %(?.%F{#00ff00}✔%f.%F{#ff0000}✗ %?%f) $ '
EOF
# A here-document (heredoc) sends multiple lines of text to a command.
# In this case, the text is appended to the .zshrc configuration file.
# The PROMPT variable customizes the shell prompt with colors,
# the current directory and the exit status of the last command.

# Usar zsh como comando por defecto al arrancar el contenedor
CMD ["/usr/bin/zsh"]
# CMD defines the default process started when the container launches.
# RUN executes commands while the image is being built.
# CMD specifies the default command executed when the container starts.
# The container launches directly into a Zsh shell session.



