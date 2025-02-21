FROM nvcr.io/nvidia/nemo:24.12

RUN wget https://github.com/coder/code-server/releases/download/v4.8.3/code-server_4.8.3_amd64.deb && \
    dpkg -i code-server_4.8.3_amd64.deb && \
    rm -f code-server_4.8.3_amd64.deb

RUN code-server --install-extension ms-python.python

RUN wget https://github.com/microsoft/vscode-cpptools/releases/download/v1.9.8/cpptools-linux.vsix && \
    code-server --install-extension cpptools-linux.vsix && \
    rm -f cpptools-linux.vsix
