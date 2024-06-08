python train_generator.py \
    --model_name_or_path facebook/bart-large \
    --train_file_summ ../recsum_/data/gigaword/train.jsonl \
    --validation_file_summ ../recsum_/data/gigaword/valid.jsonl \
    --data_cache_path ../recsum_/data/gigaword/ \
    --cache_file_name cache-%s \
    --text_column text \
    --summary_column headline \
    --max_source_length 512 \
    --max_target_length 64 \
    --checkpointing_steps 50000 \
    --learning_rate 5e-5 \
    --per_device_batch_size_mle 48 \
    --output_dir ../recsum_/dump/gw-pt-3.0-large/ \
    --preprocessing_num_workers 1 \
    --num_train_epochs 5 \
    --num_train_steps_epoch 160000 \
    --n_gpus 8
