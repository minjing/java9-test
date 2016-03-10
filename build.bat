echo.
echo *****************************^
echo ** Build Greetings Example **^
echo *****************************^

mkdir mods\com.socket
mkdir mods\org.fastsocket
mkdir mods\org.astro
mkdir mods\com.greetings

javac -d mods/org.astro src/org.astro/module-info.java src/org.astro/org/astro/World.java
javac -d mods/com.socket src/com.socket/module-info.java src/com.socket/com/socket/NetworkSocket.java src/com.socket/com/socket/spi/NetworkSocketProvider.java
javac -modulepath mods -d mods/org.fastsocket src/org.fastsocket/module-info.java src/org.fastsocket/org/fastsocket/FastNetworkSocket.java src/org.fastsocket/org/fastsocket/FastNetworkSocketProvider.java
javac -modulepath mods -d mods/com.greetings src/com.greetings/module-info.java src/com.greetings/com/greetings/Main.java

java -modulepath mods -m com.greetings/com.greetings.Main
