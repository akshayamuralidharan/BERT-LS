export BERT_DIR=/mnt/c/Users/Akshaya/Documents/BERT-LS
export MODEL_DIR=/mnt/c/Users/Akshaya/Downloads/bert_dir

python3 recursive_LSBert2.py \
  --cache_dir $MODEL_DIR \
  --do_eval \
  --do_lower_case \
  --no_cuda \
  --num_selections 10 \
  --prob_mask 0.5 \
  --eval_dir all_elaw_texts_cleaned_2.txt \
  --bert_model bert-large-uncased-whole-word-masking \
  --max_seq_length 250 \
  --word_embeddings $MODEL_DIR/crawl-300d-2M-subword/crawl-300d-2M-subword.vec \
  --word_frequency $BERT_DIR/SUBTLEX_frequency.xlsx \
  --ppdb $MODEL_DIR/ppdb-2.0-tldr \
  --output_SR_file $BERT_DIR/results/elaw_simplified_LSBERT_2.txt

