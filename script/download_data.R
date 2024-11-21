#### Preamble ####
# Purpose: Fetches and saves audio features of Ed Sheeran's tracks for analysis
# Authors: Grace Nguyen, Steven Li, Tim Chen, Fangning Zhang, Tommy Fu, Xinxiang Gao
# Date: [Today's Date]
# Contact: Code and data are available at: https://github.com/timchen0326/ed_sheeran_spotify_analysis
# License: MIT
# Pre-requisites: 
# - Ensure Spotify API credentials are set up using `spotifyr`.
# - Install the required dependency: `spotifyr`.


#### Workspace Setup ####
library(spotifyr)

#### Set API Credentials ####
# Use this function to set Spotify API credentials
edit_r_environ()

#### Fetch Data ####
# Get Ed Sheeran's audio features
ed_sheeran_data <- get_artist_audio_features("ed sheeran")

#### Save and Reload Data ####
# Save data to an RDS file
saveRDS(ed_sheeran_data, "ed_sheeran_data.rds")

# Reload data from the RDS file
ed_sheeran_data <- readRDS("ed_sheeran_data.rds")
