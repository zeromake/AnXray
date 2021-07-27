-repackageclasses ''
-allowaccessmodification
-keep class io.nekohasekai.sagernet.** { *;}
-keep class io.netty.channel.socket.nio.** { *; }
-keep class com.xray.** { *; }

# SnakeYaml
-keep class org.yaml.snakeyaml.** { *; }

-dontobfuscate
-keepattributes SourceFile,LineNumberTable