#!/bin/bash

# URL del endpoint de autenticación
AUTH_URL="http://localhost:8080/api/v1/auth/signin"

# URL del endpoint protegido
CREAR_LIBRO_URL="localhost:8080/api/v1/libros"

# Datos de autenticación
AUTH_DATA='{"email":"alice.johnson@example.com", "password":"password123"}'

# Realiza la solicitud POST para obtener el token
response=$(curl -s -X POST -H "Content-Type:application/json" --data "$AUTH_DATA" $AUTH_URL)

# Extrae el token JWT de la respuesta usando grep y cut
token=$(echo $response | grep -o '"token":"[^"]*' | cut -d'"' -f4)

# Verifica si se obtuvo un token
if [ -z "$token" ]; then
	echo "No se pudo obtener el token JWT"
	exit 1
fi

# Ejercicio 3 - Crear Libro (me falta agregar propiedades del libro como argumento)
curl -v -X POST -H "Authorization: Bearer $token" $CREAR_LIBRO_URL
