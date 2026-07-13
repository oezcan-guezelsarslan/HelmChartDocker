# Startet mit einem minimalen Alpine Linux
FROM alpine:3.24

# Metadaten hinzufügen (optional)
LABEL maintainer="oezcanguezelarslan"
LABEL description="Minimales Java 21 Basis-Image"

# 1. System aktualisieren und OpenJDK installieren
RUN apk update && \
    apk add --no-cache openjdk21-jre-headless && \
    rm -rf /var/cache/apk/*

# 2. Wichtige Java-Umgebungsvariablen setzen
ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk
ENV PATH="${JAVA_HOME}/bin:${PATH}"

# Standard-Befehl: Zeigt die Java-Version beim Starten des Containers
CMD ["java", "-version"]