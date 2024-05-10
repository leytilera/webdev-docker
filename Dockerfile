FROM archlinux:base-devel

RUN pacman -Syu --noconfirm

RUN pacman -S --noconfirm rustup dart haxe zola nodejs npm

RUN rustup default stable

ENV PATH="/root/.cargo/bin:${PATH}"

RUN cargo install mdbook

ENTRYPOINT ["/bin/bash"]