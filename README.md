## Instrucciones para Configurar y Ejecutar Super Set, sobre un contenedor

1. **Arranque del Contenedor**
   - Ejecute el siguiente comando para iniciar el contenedor:
     ```sh
     docker compose up -d
     ```
   - Verifique que la aplicación esté ejecutándose en el puerto correspondiente. Puede acceder a ella utilizando cualquiera de las siguientes direcciones:
     - http://0.0.0.0:8088
     - http://localhost:8088
     - http://ip_del_servidor:8088

2. **Establecer Permisos al Script de Inicialización**
   - Use el comando siguiente para dar permisos de ejecución al script de inicio:
     ```sh
     chmod +x start.sh
     ```

3. **Ejecutar el Script**
   - Ejecute el script de inicio con el siguiente comando:
     ```sh
     ./start.sh
     ```

¡Listo! Siguiendo estos pasos, habrás configurado y ejecutado el contenedor de manera exitosa.

Debera revisar el SSL con Certbot o Let's Encrypt
