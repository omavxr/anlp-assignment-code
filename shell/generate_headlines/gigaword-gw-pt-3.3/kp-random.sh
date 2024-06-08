CUDA_VISIBLE_DEVICES=7 python generate_results.py \
    --generator_dump_dir ../recsum_/dump/gw-pt-3.3/ \
    --kp_select_method random \
    --dataset_file ../recsum_/data/gigaword/synthesized_user/test.json \
    --output_dir ../recsum_/results/gigaword-gw-pt-3.3/ \
    --output_file kp-random.json \
    --top_k 1

CUDA_VISIBLE_DEVICES=7 python eval_generator.py \
    --dataset_file ../recsum_/data/gigaword/synthesized_user/test.json \
    --result_file ../recsum_/results/gigaword-gw-pt-3.3/kp-random.json \
    --output_dir ../recsum_/results/gigaword-gw-pt-3.3/scores/ \
    --batch_size 32

CUDA_VISIBLE_DEVICES=7 python generate_results.py \
    --generator_dump_dir ../recsum_/dump/gw-pt-3.3.3/ \
    --kp_select_method random \
    --dataset_file ../recsum_/data/gigaword/synthesized_user/test.json \
    --output_dir ../recsum_/results/gigaword-gw-pt-3.3.3/ \
    --output_file kp-random.json \
    --top_k 1

CUDA_VISIBLE_DEVICES=7 python eval_generator.py \
    --dataset_file ../recsum_/data/gigaword/synthesized_user/test.json \
    --result_file ../recsum_/results/gigaword-gw-pt-3.3.3/kp-random.json \
    --output_dir ../recsum_/results/gigaword-gw-pt-3.3.3/scores/ \
    --batch_size 32

CUDA_VISIBLE_DEVICES=7 python generate_results.py \
    --generator_dump_dir ../recsum_/dump/gw-pt-3.3.4/ \
    --kp_select_method random \
    --dataset_file ../recsum_/data/gigaword/synthesized_user/test.json \
    --output_dir ../recsum_/results/gigaword-gw-pt-3.3.4/ \
    --output_file kp-random.json \
    --top_k 1

CUDA_VISIBLE_DEVICES=7 python eval_generator.py \
    --dataset_file ../recsum_/data/gigaword/synthesized_user/test.json \
    --result_file ../recsum_/results/gigaword-gw-pt-3.3.4/kp-random.json \
    --output_dir ../recsum_/results/gigaword-gw-pt-3.3.4/scores/ \
    --batch_size 32

