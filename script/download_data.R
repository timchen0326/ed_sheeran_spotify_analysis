library(spotifyr)

edit_r_environ()

ed_sheeran_data <- get_artist_audio_features("ed sheeran")

saveRDS(ed_sheeran_data, "ed_sheeran_data.rds")
ed_sheeran_data <- readRDS("ed_sheeran_data.rds")