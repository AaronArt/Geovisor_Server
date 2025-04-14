# Usa la imagen oficial de GeoServer (la última versión)
FROM geoserver/geoserver:latest

# (Opcional) Si tienes un directorio con tus shapefiles o configuraciones personalizadas, cópialos dentro del contenedor.
# Por ejemplo, asumiendo que tienes una carpeta llamada "data" en tu repo:
 COPY ./data /var/geoserver_data

# La imagen oficial ya tiene todo configurado para arrancar GeoServer.
# Exponemos el puerto 8080 (GeoServer suele correr en este puerto)
EXPOSE 8080

# Inicia GeoServer
CMD ["catalina.sh", "run"]
