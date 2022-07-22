FROM debian:bullseye

# ohmyzsh requires curl, zsh, and git
# Rust requires cmake, zsh
# tmux is nice to have for headless setup
RUN apt update && \
      apt install -y sudo zsh git curl cmake tmux

# Install Rust - takes a minute
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

RUN useradd -m hamsoft && echo "hamsoft:hamsoft" | chpasswd && adduser hamsoft sudo

USER hamsoft
WORKDIR /home/hamsoft
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended"

COPY ./payload.txt ./

# Fix usernames
# RUN chown hamsoft ./payload.txt

CMD [ "/usr/bin/zsh" ]
