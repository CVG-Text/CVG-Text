# Where am I? Cross-View Geo-localization with Natural Language Descriptions

<!--
**CVG-Text/CVG-Text** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->

## 🏆 Contributions

**Novel mission setting：** We introduce and formalize the Cross-View Geo-localization task based on natural language descriptions, utilizing scene text descriptions to retrieve corresponding OSM or satellite images for geographical localization.

**Dataset Contribution：** We propose CVG-Text, a dataset with well-aligned street-views, satellite images, OSM, and text descriptions across three cities and over 30,000 coordinates. Additionally a progressive scene text generation framework based on LMM is presented, which reduces vague descriptions and generates high-quality scene text.

**New retrieve methods：** We introduce CrossText2Loc, a novel text localization method that excels in handling long texts and interpretability. It achieves over a 10\% improvement in Top-1 recall compared to existing methods, while offering retrieval reasoning beyond similarity scores.


## 🛠️ Requirements and Installation

Ensure your environment meets the following requirements:

```bash
conda create -n CVG-Text python=3.9 -y
conda activate CVG-Text
pip install -r requirements.txt
```

## 🤗 Dataset Download and Path Configuration

**Dataset：** The images and annotation files for CVG-Text can be found at [https://huggingface.co/CVG-Text/CVG-Text](https://huggingface.co/datasets/CVG-Text/CVG-Text)

**Path Configuration：** After downloading, update the `/path/to/dataset/` in `./config.yaml` with the actual dataset paths.

**Model Checkpoints：** Our model checkpoints are available at: [https://huggingface.co/CVG-Text/CrossText2Loc](https://huggingface.co/CVG-Text/CrossText2Loc)

## 🚀 Quick Start
To retrieve satellite images (sat) using NewYork-mixed (panoramic + single-view) text and the Ours model, run:
```bash
python zeroshot.py --version NewYork-mixed --img_type sat --model CLIP-L/14@336 --expand
```
You can also evaluate specific checkpoint by setting `--checkpoint {your_checkpoint_path}`
For more examples, please refer to the script in `./scripts/evaluate.sh`.

## 🏋️‍♂️ Train
To train the Ours model on Brisbane-mixed and OSM datasets, use the following command:
```bash
python -m torch.distributed.run --nproc_per_node=4 finetune.py --lr 1e-5 --batch_size 128 --epochs 40 --version Brisbane-mixed --model CLIP-L/14@336 --expand --img_type sat --logging
```
The `--logging` flag determines whether to save log files and model checkpoints.
