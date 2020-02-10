alg_data <- read.csv('../raw_data/Tool_Info.csv')
index_df <- alg_data[c('year_of_pub', 'indexing')]
index_df[index_df$indexing == 'hashing', 3] = 'Hashing'
index_df[index_df$indexing == 'BWT-FM', 3] = 'BWT-FM'
index_df[index_df$indexing == 'BWT-FM + hashing', 3] = 'BWT-FM & Hash'
index_df[index_df$indexing == 'suffix array', 3] = 'Other Suffix'
index_df[index_df$indexing == 'suffix tree', 3] = 'Other Suffix'
index_df[index_df$indexing == 'BWT-ST', 3] = 'Other Suffix'
colnames(index_df) = c('year_of_pub', 'indexing', 'cat_index')
index_tab <- table(index_df$year_of_pub, index_df$cat_index)

pdf("../figures/Figure2_index.pdf")
ford(index_tab[nrow(index_tab):1,], xlab = "Indexing Algorithm", ylab = "Year of Publication", mar = c(2,5,7,1))
dev.off()
png("../figures/Figure2_index.png")
ford(index_tab[nrow(index_tab):1,], xlab = "Indexing Algorithm", ylab = "Year of Publication", mar = c(2,5,7,1))
dev.off()


fs_df <- alg_data[c('year_of_pub', 'fix_length_seed')]
fs_df[fs_df$fix_length_seed == 'Y', 3] = 'Yes'
fs_df[fs_df$fix_length_seed == 'N', 3] = 'No'
colnames(fs_df) = c('year_of_pub', 'fix_length_seed', 'cat_fs')
fs_tab <- table(fs_df$year_of_pub, fs_df$cat_fs)

pdf("../figures/Figure2_fixed_seeds.pdf")
ford(fs_tab[nrow(fs_tab):1,], xlab = "Tool Uses Fixed Seed Length", ylab = "Year of Publication", mar = c(2,5,7,1))
dev.off()
png("../figures/Figure2_fixed_seeds.png")
ford(fs_tab[nrow(fs_tab):1,], xlab = "Tool Uses Fixed Seed Length", ylab = "Year of Publication", mar = c(2,5,7,1))
dev.off()


ss_df <- alg_data[c('year_of_pub', 'spaced_seed')]
ss_df[ss_df$spaced_seed == 'Y', 3] = 'Yes'
ss_df[ss_df$spaced_seed == 'N', 3] = 'No'
colnames(ss_df) = c('year_of_pub', 'spaced_seed', 'cat_ss')
ss_tab <- table(ss_df$year_of_pub, ss_df$cat_ss)

pdf("../figures/Figure2_spaced_seeds.pdf")
ford(ss_tab[nrow(ss_tab):1,], xlab = "Tool Uses Spaced Seeds", ylab = "Year of Publication", mar = c(2,5,7,1))
dev.off()
png("../figures/Figure2_spaced_seeds.png")
ford(ss_tab[nrow(ss_tab):1,], xlab = "Tool Uses Spaced Seeds", ylab = "Year of Publication", mar = c(2,5,7,1))
dev.off()


cs_df <- alg_data[c('year_of_pub', 'seed_chaining')]
cs_df[cs_df$seed_chaining == 'Y', 3] = 'Yes'
cs_df[cs_df$seed_chaining == 'N', 3] = 'No'
colnames(cs_df) = c('year_of_pub', 'seed_chaining', 'cat_cs')
cs_tab <- table(cs_df$year_of_pub, cs_df$cat_cs)

pdf("../figures/Figure2_chained_seeds.pdf")
ford(cs_tab[nrow(cs_tab):1,], xlab = "Tool Uses Chained Seeds", ylab = "Year of Publication", mar = c(2,5,5,1))
dev.off()
png("../figures/Figure2_chained_seeds.png")
ford(cs_tab[nrow(cs_tab):1,], xlab = "Tool Uses Chained Seeds", ylab = "Year of Publication", mar = c(2,5,5,1))
dev.off()


local_df <- alg_data[c('year_of_pub', 'pairwise_alignment')]
local_df <- local_df[complete.cases(local_df),]
local_df[local_df$pairwise_alignment == 'SW', 3] = 'Smith-Waterman'
local_df[local_df$pairwise_alignment == 'HD', 3] = 'Hamming Distance'
local_df[local_df$pairwise_alignment == 'NW', 3] = 'Needleman-Wunsch'
local_df[local_df$pairwise_alignment == 'Non-DP Heuristic', 3] = 'Non-DP Heuristic'
local_df[local_df$pairwise_alignment == 'SW & NW', 3] = 'Multiple Methods'
local_df[local_df$pairwise_alignment == 'SW & Semi-Global', 3] = 'Multiple Methods'
local_df[local_df$pairwise_alignment == 'Rabin-KArp Algorithm', 3] = 'Other DP'
local_df[local_df$pairwise_alignment == 'Landau-Vishkin', 3] = 'Other DP'
local_df[local_df$pairwise_alignment == 'Sparse DP', 3] = 'Other DP'
local_df[local_df$pairwise_alignment == 'Banded Myers Bit Vector', 3] = 'Other DP'
local_df[local_df$pairwise_alignment == 'Myers Bit-Vector', 3] = 'Other DP'
local_df[local_df$pairwise_alignment == 'Semi-Global', 3] = 'Other DP'
colnames(local_df) = c('year_of_pub', 'pairwise', 'cat_pairwise')
local_tab <- table(local_df$year_of_pub, local_df$cat_pairwise)

pdf("../figures/Figure2_pairwise.pdf")
ford(local_tab[nrow(local_tab):1,], xlab = "Pairwise Alignment Algorithm", ylab = "Year of Publication", mar = c(2,5,8,1))
dev.off()
png("../figures/Figure2_pairwise.png")
ford(local_tab[nrow(local_tab):1,], xlab = "Pairwise Alignment Algorithm", ylab = "Year of Publication", mar = c(2,5,8,1))
dev.off()