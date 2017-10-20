javac -d out/helloworld src/helloworld/com/javamodularity/helloworld/HelloWorld.java src/helloworld/module-info.java

mkdir mods
jar -cfe mods/helloworld.jar com.javamodularity.helloworld.HelloWorld -C out/helloworld .

java --module-path out --module helloworld/com.javamodularity.helloworld.HelloWorld

java --show-module-resolution --limit-modules java.base --module-path mods --module helloworld

rm -rf image/helloworld
jlink --module-path mods:$JAVA_HOME/jmods --add-modules helloworld --launcher hello=helloworld --output image/helloworld
