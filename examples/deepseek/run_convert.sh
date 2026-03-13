# pip install tilelang==0.1.6.post1
# pip install git+https://github.com/Dao-AILab/fast-hadamard-transform.git

nohup ./v32/python convert.py \
  --hf-ckpt-path $HF_FP8_CKPT \
  --save-path $DS_CKPT \
  --n-experts 256 \
  --model-parallel 8 \
  > convert.log 2>&1 &