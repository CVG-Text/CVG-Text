# Satellite
python zeroshot.py --version NewYork-mixed --img_type sat  --model CLIP-L/14@336 --expand
# OSM
python zeroshot.py --version NewYork-mixed --img_type OSM  --model CLIP-L/14@336 --expand
# Brisbane Pano-view
python zeroshot.py --version Brisbane --img_type OSM  --model CLIP-L/14@336 --expand
# Clip-B
python zeroshot.py --version Brisbane --img_type OSM  --model CLIP-B/16
# Clip-L (Unexpand) on Tokyo Single-view
python zeroshot.py --version Tokyo-photos --img_type sat  --model CLIP-L/14@336