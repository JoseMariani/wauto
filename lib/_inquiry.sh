#!/bin/bash

get_link_git() {
  
  print_banner
  printf "${WHITE} 💻 Link del repositorio:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " link_git
}

get_instancia_add() {
  
  print_banner
  printf "${WHITE} 💻 Empresa a ser configurada (Utilizar Letras minusculas):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " instancia_add
}

get_max_whats() {
  
  print_banner
  printf "${WHITE} 💻 Cuantos Whastapp podran ser sincronizados en ${instancia_add}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " max_whats
}

get_max_user() {
  
  print_banner
  printf "${WHITE} 💻 Escriba el numero de asistentes maximos que la empresa ${instancia_add} podra agregar:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " max_user
}

get_frontend_url() {
  
  print_banner
  printf "${WHITE} 💻 Escriba el dominio para el FRONTEND de ${instancia_add}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_url
}

get_backend_url() {
  
  print_banner
  printf "${WHITE} 💻 Escriba el dominio para el BACKEND/API de ${instancia_add}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_url
}

get_frontend_port() {
  
  print_banner
  printf "${WHITE} 💻 Escribe el PUERTO FRONTEND para ${instancia_add}; Ejemplo: 3000 A 3999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_port
}

get_backend_port() {
  
  print_banner
  printf "${WHITE} 💻 Escribe el PUERTO BACKEND para esta instancia; Ex: 4000 A 4999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_port
}

get_mysql_port() {
  
  print_banner
  printf "${WHITE} 💻 Escriba el PUERTO de MYSQL de ${instancia_add}; Ex: 3306 (3306, 3307...) ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " mysql_port
}

get_urls() {
  get_instancia_add
  get_max_whats
  get_max_user
  get_frontend_url
  get_backend_url
  get_frontend_port
  get_backend_port
  get_mysql_port
}

software_update() {
  get_instancia_add
  frontend_update
  backend_update
}

inquiry_options() {
  
  print_banner
  printf "${WHITE} 💻 Bienvenido que quieres hacer?!${GRAY_LIGHT}"
  printf "\n\n"
  printf "   [1] Instalar nueva instancia\n"
  printf "   [2] Actualizar una instancia"
  printf "\n"
  read -p "> " option

  case "${option}" in
    1) get_urls ;;
    2) software_update 
      exit
      ;;

    *) exit ;;
  esac
}


