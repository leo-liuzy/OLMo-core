conda create -n olmo-new python=3.11 -y

pip install torch==2.5.1 torchvision==0.20.1 torchaudio==2.5.1 --index-url https://download.pytorch.org/whl/cu124

git clone https://github.com/triton-lang/triton.git

cd triton || exit

git checkout 5fe38ffd73c2ac6ed6323b554205186696631c6f  # get the torch-matched version of triton: https://github.com/pytorch/pytorch/blob/v2.5.1/.ci/docker/ci_commit_pins/triton.txt

cd python || exit

pip install ninja cmake wheel

pip install -e . # build triton from source

cd ../../OLMo-core || exit

pip install -e . # build olmo-core from source

