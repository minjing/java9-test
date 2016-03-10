mkdir mlib

jar --create --file=mlib/org.astro@1.0.jar --module-version=1.0 -C mods/org.astro .
jar --create --file=mlib/com.socket@1.0.jar --module-version=1.0 -C mods/com.socket .
jar --create --file=mlib/org.fastsocket@1.0.jar --module-version=1.0 -C mods/org.fastsocket .
jar --create --file=mlib/com.greetings.jar --main-class=com.greetings.Main -C mods/com.greetings .
