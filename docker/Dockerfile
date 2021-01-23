#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Docker image for apache kylin, based on the Hadoop image
FROM hadoop2.7-all-in-one

ENV KYLIN_VERSION 3.1.0
ENV KYLIN_HOME /home/admin/apache-kylin-$KYLIN_VERSION-bin-hbase1x

# Download released Kylin
RUN wget https://archive.apache.org/dist/kylin/apache-kylin-$KYLIN_VERSION/apache-kylin-$KYLIN_VERSION-bin-hbase1x.tar.gz \
    && tar -zxvf /home/admin/apache-kylin-$KYLIN_VERSION-bin-hbase1x.tar.gz \
    && rm -f /home/admin/apache-kylin-$KYLIN_VERSION-bin-hbase1x.tar.gz

RUN cp $HIVE_HOME/hcatalog/share/hcatalog/hive-hcatalog-core-1.2.1.jar $SPARK_HOME/jars/

#setup postgresql JDBC
RUN wget https://jdbc.postgresql.org/download/postgresql-42.2.18.jar \
    && cp /home/admin/postgresql-42.2.18.jar $KYLIN_HOME/ext/ \
    && mv /home/admin/postgresql-42.2.18.jar $SQOOP_HOME/lib

RUN echo "kylin.engine.livy-conf.livy-enabled=true" >>  $KYLIN_HOME/conf/kylin.properties \
    && echo "kylin.engine.livy-conf.livy-url=http://127.0.0.1:8998" >>  $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.engine.livy-conf.livy-key.file=hdfs://localhost:9000/kylin/livy/kylin-job-$KYLIN_VERSION.jar >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.engine.livy-conf.livy-arr.jars=hdfs://localhost:9000/kylin/livy/hbase-client-$HBASE_VERSION.jar,hdfs://localhost:9000/kylin/livy/hbase-common-$HBASE_VERSION.jar,hdfs://localhost:9000/kylin/livy/hbase-hadoop-compat-$HBASE_VERSION.jar,hdfs://localhost:9000/kylin/livy/hbase-hadoop2-compat-$HBASE_VERSION.jar,hdfs://localhost:9000/kylin/livy/hbase-server-$HBASE_VERSION.jar,hdfs://localhost:9000/kylin/livy/htrace-core-*-incubating.jar,hdfs://localhost:9000/kylin/livy/metrics-core-*.jar >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.source.hive.quote-enabled=false >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.engine.spark-conf.spark.eventLog.dir=hdfs://localhost:9000/kylin/spark-history >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.engine.spark-conf.spark.history.fs.logDirectory=hdfs://localhost:9000/kylin/spark-history >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.engine.spark-conf-mergedict.spark.executor.memory=1G >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.engine.spark-conf.spark.driver.memory=512M >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.engine.spark-conf.spark.executor.memory=1G >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.engine.spark-conf.spark.executor.instances=1 >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.engine.spark-conf.spark.executor.memoryOverhead=512M >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.source.hive.redistribute-flat-table=false >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.engine.spark-fact-distinct=true >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.engine.spark-udc-dictionary=true >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.source.default=16 >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.source.jdbc.connection-url=jdbc:postgresql://docker.for.mac.host.internal:5432/live >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.source.jdbc.driver=org.postgresql.Driver >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.source.jdbc.dialect=postgresql >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.source.jdbc.user=arulsrinivaasan >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.source.jdbc.pass=postgres >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.source.jdbc.sqoop-home=$SQOOP_HOME >> $KYLIN_HOME/conf/kylin.properties \
    && echo kylin.source.jdbc.filed-delimiter=| >> $KYLIN_HOME/conf/kylin.properties \

COPY ./entrypoint.sh /home/admin/entrypoint.sh
RUN chmod u+x /home/admin/entrypoint.sh

ENTRYPOINT ["/home/admin/entrypoint.sh"]
