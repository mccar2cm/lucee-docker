FROM lucee/lucee:5.4.4.38
ENV LUCEE_JAVA_OPTS "-Xms512m -Xmx1024m"

# Setup the password for the Lucee admin.
COPY ./docker/cfml/password.txt /opt/lucee/server/lucee-server/context/

# Setup the SQLite JDBC driver.
COPY ./docker/cfml/sqlite-jdbc-3.45.3.0.jar /opt/lucee/server/lucee-server/context/lib

# Setup the Copy in the db.
# COPY xxxx  var/www-databases