python run_summarization.py \
    --model_name_or_path "Salesforce/codet5-base" \
    --output_dir "./tmp" \
    --train_file '/media/data/thanhnb/test_data/train.csv' \
    --validation_file '/media/data/thanhnb/test_data/valid.csv' \
    --test_file '/media/data/thanhnb/test_data/test.csv' \
    --source_prefix 'Python: ' \
    --do_predict \
    --gradient_accumulation_steps 4 \
    --per_device_train_batch_size 4 \
    --per_device_eval_batch_size 4 \
    --evaluation_strategy "epoch" \
    --logging_steps 200 \
    --predict_with_generate \
    --save_total_limit 3 \
    --num_train_epochs 5 \
    --text_column "text" \
    --summary_column "title" \
    --max_source_length 512 \
    --max_target_length 64 \
    --num_beams 4 \
    --overwrite_output_dir 1 \
    --save_strategy 'epoch' \
    --trust_remote_code True \
    --tokenizer_name microsoft/unixcoder-base-nine \
    --do_train \
    --do_eval \
        # --validation_file '/media/data/thanhnb/test_data/valid.csv' \


    # --model_name_or_path "Salesforce/codet5-base" \
