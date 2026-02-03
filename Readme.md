
# MATLAB code for heatmaps and nanocage exclusion fraction (Way et al.)

This repository contains the MATLAB code used in **Way et al.** to generate localization heatmaps and compute the **exclusion fraction** of nanocages.

## Contents

### Notebooks / Live Scripts

- **`plot_heatmap.mlx`**  
  Generates a **localization heatmap** from single-molecule / single-particle tracking data (analyzed with **SMALL-LABS**) and **cell segmentation masks** (generated with **Cellpose**).

- **`exclusion_fraction.mlx`**  
  Computes the **normalized exclusion fraction** by comparing **HU heatmaps** and **nanocage heatmaps** acquired under the same experimental conditions.

### Example Data

- **`example_data/`**  
  Contains example inputs used by the live scripts:
  - `example_fits.mat` — tracking results exported from **SMALL-LABS**
  - `example_PhaseMask.mat` — cell segmentation output from **Cellpose**
  - `HU_norm_loc.mat` — normalized coordinates (HU) after scaling by cell dimensions (used for heatmap generation)
  - `Nanocage_norm_loc.mat` — normalized coordinates (nanocage) after scaling by cell dimensions (used for heatmap generation)

### Supporting Scripts

- **`supporting_scripts/`**
  - Feret diameter utilities — third-party Feret-diameter tools by **Steve Eddins (MathWorks)**, archived here because the original MathWorks File Exchange link is no longer accessible.
  - `anglevec.m` — utility function to compute the angle between two 2D vectors.