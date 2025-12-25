curl -sSL https://raw.githubusercontent.com/xetdata/xet-tools/main/install-git-xet.sh | bash
git xet install
apt install git-lfs
git lfs install

mkdir pretrained_weights
cd pretrained_weights

GIT_LFS_SKIP_SMUDGE=1 git clone https://huggingface.co/tencent/Tencent-Hunyuan-Large
cd Tencent-Hunyuan-Large
git lfs pull --include='Hunyuan-A52B-Pretrain/*.bin'
