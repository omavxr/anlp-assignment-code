# Generation based on multiple KPs; Large model
cd ../..

python train_generator.py \
    --model_name_or_path facebook/bart-large \
    --train_file_summ ../recsum_/data/newsroom/train-k_1.0.json \
    --validation_file_summ ../recsum_/data/newsroom/dev-k_1.0.json \
    --data_cache_path ../recsum_/data/newsroom/ \
    --cache_file_name cache-%s-k_1.0 \
    --text_column text \
    --summary_column title \
    --max_source_length 512 \
    --max_target_length 64 \
    --checkpointing_steps 10000 \
    --learning_rate 5e-5 \
    --per_device_batch_size_mle 32 \
    --output_dir ../recsum_/dump/nr-pt-3.1-large/ \
    --preprocessing_num_workers 1 \
    --num_train_epochs 10 \
    --n_gpus 8



