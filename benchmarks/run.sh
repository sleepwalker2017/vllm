model_path=/data/weilong.yu/mac_files/qwen-32-shopee-fp8/

#VLLM_USE_V1=1 python benchmark_long_document_qa_throughput.py --model /data/public_models/Llama-3.1-8B/ --enable-prefix-caching --num-documents 10 --repeat-count 2 --repeat-mode tile --swap-space 0 --num-gpu-blocks-override 1252 --max-model-len 20010 --max-num-batched-tokens 20010
#nsys profile --trace-fork-before-exec=true --cuda-graph-trace=node --duration 120 --force-overwrite true \

VLLM_USE_V1=1  \
        python benchmark_long_document_qa_throughput.py --model $model_path --enable-prefix-caching --num-documents 10 --repeat-count 1 --repeat-mode tile
        #--swap-space 40
        #--swap-space 4 --num-gpu-blocks-override 15520 --max-model-len 20010 --max-num-batched-tokens 20010

