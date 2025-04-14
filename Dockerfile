# Usa la imagen de GeoServer de Camptocamp
FROM camptocamp/geoserver:latest

# (Opcional) Si tienes un directorio con tus shapefiles o configuraciones personalizadas, cópialos dentro del contenedor.
# Por ejemplo, si tienes una carpeta "data" en tu repositorio:
COPY ./data /var/geoserver_data

# Exponemos el puerto 8080 (GeoServer por defecto usa este puerto)
EXPOSE 8080

# Inicia GeoServer
CMD ["catalina.sh", "run"]
