#!/bin/bash
read -p "Enter evn-type (tf/py-torch): " env_type

if ["$env_type"="tf"]; then
    tf_packages=(
        numpy
        pandas
        tensorflow
        matplotlib
        pillow
        seaborn
        cv2
    )

    for package in "${packages[@]}"
    do
        pip install "$tf_package"
    done

elif ["$env_type"="py-torch"]; then
    read -p "Enter CUDA version (e.g., cu111): " cuda_version
    pyTorch="torch==$cuda_version torchvision==$cuda_version torchaudio==0.9.0 -f https://download.pytorch.org/whl/torch_stable.html"
    py_packages=(
        numpy
        pandas
        "$pyTorch"
        pytorch-lightning
        pillow
        seaborn
        cv2
    )

    for package in "${packages[@]}"
    do
        pip install "$py_package"
    done