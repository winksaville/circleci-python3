# circleci-python3
Test python3 on circleci

This contains an install script to install a version Python3. By
default it installs Phthon 3.5.1. It takes some environment variables
to control the installation:

```
  FORCE : Use TRUE to force the installation
  EXPECTED_VERSION : 3.5.1
  SRC_PREFIX_DIR : ${HOME}/opt/src
  INSTALL_PREFIX_DIR : ${HOME}/opt

  You can pass the environment variable by preceeding the command with the command
  so to force compiliation:
    FORCE=TRUE ./python_install.sh

  or to compile 3.5.0
    EXPECTED_VERSION=3.5.0 ./python_install.sh

  or to compile 3.5.0 to ${HOME}/srouces/ and ${HOME}/install/
    EXPECTED_VERSION=3.5.0 SRC_PREFIX_DIR=${HOME}/sources INSTALL_PREFIX_DIR=${HOME}/install ./python_install.sh
```
