# ベースとなるイメージを指定
FROM centos:centos7

# メタデータを追加（オプション）
LABEL version="1.0"

# コンテナ内で作業するディレクトリを指定
WORKDIR /

# 必要なパッケージをインストール
RUN yum -y install git make curl xz patch gcc which findutils file openssl && \
    yum -y groupinstall 'Development Tools' && \
    yum install --nogpgcheck -y https://packages.groonga.org/centos/groonga-release-latest.noarch.rpm && \
    yum -y install mecab mecab-ipadic mecab-devel patch --nogpgcheck

# mecab-ipadic-neologdをインストール
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git && \
    cd mecab-ipadic-neologd && \
    yes yes | ./bin/install-mecab-ipadic-neologd -n && \
    echo `mecab-config --dicdir`"/mecab-ipadic-neologd" && \
    rm -rf /mecab-ipadic-neologd

# nameltiをインストール
RUN git clone --depth 1 https://github.com/ToshihikoSakai/namelti.git && \
    cd namelti/src && \
    make && \
    make install && \
    cd exec && \
    make

# 環境変数を設定
ENV LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH