# Apply and/or install all conigurations contained in this repository

echo "Applying starship configuration"
cd starship
./apply.sh
cd ..

echo "Applying kitty configuration"
cd kitty
./apply.sh
cd ..

echo "Install nvim and NvChad"
cd nvim
./install-or-update-nvim.sh
./install-nvchad.sh
cd ..
