srun -p s2_bigdata --quotatype=spot --gres=gpu:1 python visualize/visualizer.py --version NewYork --model CLIP-L/14@336 --expand --img_type sat