## java微服务启动脚本

# 配置文件所在目录路径添加到CLASSPATH
CLASSPATH='/apps/config'

# jar包路径添加到CLASSPATH
for jar in lib/*.jar ;do CLASSPATH=$CLASSPATH:$jar; done

# 以server模式启动java进程
java -server -Xmx512 -cp $CLASSPATH com.xxx.WebApp &