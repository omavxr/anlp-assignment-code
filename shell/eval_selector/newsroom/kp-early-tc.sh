CUDA_VISIBLE_DEVICES=2 python eval_selector.py \
    --dataset_file ../recsum_/data/newsroom/synthesized_user/test.json \
    --output_dir ../recsum_/results/newsroom/scores/ \
    --output_name kp-early-tc \
    --selector_dump_dir ../recsum_/dump/nr-sl-3.0/ \
    --kp_select_method early-ft

