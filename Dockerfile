# Copyright 2020 opensourceai. All Rights Reserved.

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
FROM centos:7
LABEL maintainer="Quan Chen<chenquan@osai.club>"

ENV JAVA_VERSION="1.8.0_212" \
    JAVA_HOME="/usr/local/src/jdk$JAVA_VERSION" \
    PATH="$PATH:$JAVA_HOME/bin"

RUN  mkdir -p /usr/local/src && yum install -y wget \
  && wget https://github.com/chenquan/oracle-jdk-download/releases/download/8u212-b10/jdk-8u212-linux-x64.tar.gz \
  && tar -xzf jdk-8u212-linux-x64.tar.gz && mv jdk${JAVA_VERSION} /usr/local/src/ && rm -f jdk-8u212-linux-x64.tar.gz