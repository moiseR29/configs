echo "create Symbolic Links"

cd && \
ln -s ~/configs/.p10k.zsh .p10k.zsh && \
ln -s ~/configs/.zshrc .zshrc && \
cd .config && \
ln -s ~/configs/terminator terminator && \
ln -s ~/configs/nvim nvim
