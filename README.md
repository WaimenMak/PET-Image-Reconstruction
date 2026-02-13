# PET Image Reconstruction

Low-count PET image reconstruction using deep learning methods including SAGAN, MAPEM-Net, and U-Net denoising.

## 📋 Overview

This repository contains the implementation of three deep learning approaches for low-count PET (Positron Emission Tomography) image reconstruction. Low-count PET imaging reduces radiation exposure but suffers from increased noise. This project explores methods to denoise and reconstruct high-quality images from low-count PET data.

## 🚀 Methods

### 1. SAGAN (Self-Attention GAN)
- **File**: `GAN-denoise.ipynb`
- Implementation of Generative Adversarial Network with self-attention mechanism
- Learns to denoise low-count PET images

### 2. MAPEM-Net
- **File**: `MapemNet.ipynb`
- Combines Maximum A Posteriori Expectation Maximization with deep learning
- Integrates physics-based reconstruction with neural networks

### 3. U-Net Denoising
- **File**: `Unet_denoise.ipynb`
- Classic encoder-decoder architecture for medical image denoising
- Baseline comparison method

## 📁 Repository Structure

```
PET-Image-Reconstruction/
├── Dataset/              # Training and testing data
├── GAN-denoise.ipynb    # SAGAN implementation
├── MapemNet.ipynb       # MAPEM-Net implementation
├── Unet_denoise.ipynb   # U-Net denoising implementation
├── thesis.pdf           # Complete thesis documentation
└── README.md            # This file
```

## 🔧 Requirements

```
python>=3.7
pytorch>=1.8.0
numpy
matplotlib
scikit-image
jupyter
```

## 💻 Installation

```bash
# Clone the repository
git clone https://github.com/WaimenMak/PET-Image-Reconstruction.git
cd PET-Image-Reconstruction

# Install dependencies
pip install -r requirements.txt
```

## 📊 Usage

### Training

Each notebook contains complete training pipeline:

```bash
# Open Jupyter Notebook
jupyter notebook

# Run any of the following:
# - GAN-denoise.ipynb
# - MapemNet.ipynb
# - Unet_denoise.ipynb
```

### Dataset

Place your PET image data in the `Dataset/` directory with the following structure:
```
Dataset/
├── train/
│   ├── low_count/    # Low-count PET images
│   └── full_count/   # Full-count reference images
└── test/
    ├── low_count/
    └── full_count/
```

## 📖 Documentation

For detailed methodology, experimental setup, and results analysis, please refer to `thesis.pdf`.

## 🎓 Undergraduate Thesis Project

This work was completed as an undergraduate design project focusing on medical image processing and deep learning applications in nuclear medicine.

## 📝 Citation

If you use this code in your research, please cite:

```bibtex
@misc{PET-Image-Reconstruction,
  author = {WaimenMak},
  title = {Low-count PET Image Reconstruction using Deep Learning},
  year = {2026},
  publisher = {GitHub},
  url = {https://github.com/WaimenMak/PET-Image-Reconstruction}
}
```

## 📧 Contact

For questions or collaborations, please open an issue or contact via GitHub.
