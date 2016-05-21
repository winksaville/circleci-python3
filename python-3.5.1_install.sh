#!/bin/bash
if [ "${SRC_PREFIX_DIR}" == "" ]; then SRC_PREFIX_DIR=${HOME}/opt/src; fi
echo SRC_PREFIX_DIR=${SRC_PREFIX_DIR}
if [ "${INSTALL_PREFIX_DIR}" == "" ]; then INSTALL_PREFIX_DIR=${HOME}/opt; fi
echo INSTALL_PREFIX_DIR=${INSTALL_PREFIX_DIR}

mkdir -p ${SRC_PREFIX_DIR}
mkdir -p ${INSTALL_PREFIX_DIR}/py-351
wget https://www.python.org/ftp/python/3.5.1/Python-3.5.1.tgz
tar -xf Python-3.5.1.tgz -C ${SRC_PREFIX_DIR}
cd ${SRC_PREFIX_DIR}/Python-3.5.1/
./configure --prefix=${INSTALL_PREFIX_DIR}/py-351
make
#make test
make install
