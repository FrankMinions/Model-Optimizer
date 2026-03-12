nohup python convert.py \
  --hf-ckpt-path $HF_FP8_CKPT \
  --save-path $DS_CKPT \
  --n-experts 256 \
  --model-parallel 8 \
  > convert.log 2>&1 &