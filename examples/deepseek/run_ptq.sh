# pip install tilelang==0.1.6.post1
# pip install git+https://github.com/Dao-AILab/fast-hadamard-transform.git

nohup torchrun --nproc-per-node 8 --master_port=12346 ptq.py \
  --model_path $DS_CKPT \
  --config ./DeepSeek-V3.2/inference/config_671B_v3.2.json \
  --quant_cfg FP8_KV_CFG \
  --mla_quant per_tensor_fp8 \
  --output_path $OUTPUT_PATH \
  --dataset ./calib_data/cnn_dailymail.jsonl \
  --calib_size 1024 \
  > ptq.log 2>&1 &