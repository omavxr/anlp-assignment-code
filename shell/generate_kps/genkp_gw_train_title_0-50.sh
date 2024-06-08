CUDA_VISIBLE_DEVICES=0 python scripts/data_process/generate_key_phrases.py \
    --batch_size 1024 \
    --extract_target headline \
    --extract_split train \
    --src_max_length 64 \
    --begin_percentage 0 \
    --end_percentage 50 \
    --input_path ../recsum_/data/gigaword/ \
    --output_path ../recsum_/data/gigaword/kp_1.0/ \
    --identifier_column id \
    --corpus gigaword \
    --hg_model_name ankur310794/bart-base-keyphrase-generation-kpTimes