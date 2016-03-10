echo "The command failed on windows"

jlink --modulepath $JAVA_HOME/jmods:mlib --addmods com.greetings --output greetingsapp
