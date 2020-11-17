#Author: Alicia Sorgen
#Date: 11-06-2020
#Description: Convert PDFs to png
rm(list=ls())


## Libraries
library(stringr)
library(pdftools)

pipeRoot = dirname(dirname(getwd()))
output = file.path(dirname(getwd()),"output/")



#### CompareStudiesSV ####
input <- paste0(pipeRoot,"/",str_subset(dir(pipeRoot), "CompareStudiesSV"),"/output/")

bitmap <- pdf_render_page(paste0(input,"Seq_scatterPlots.pdf"), dpi = 100)
png::writePNG(bitmap, paste0(output,"Seq_scatterPlots.png"))

bitmap <- pdf_render_page(paste0(input,"Seq_coefficientsFromScatterPlots.pdf"), dpi = 100)
png::writePNG(bitmap, paste0(output,"Seq_coefficientsFromScatterPlots.png"))

bitmap <- pdf_render_page(paste0(input,"coefficientsFromScatterPlots_compareSVandGenus.pdf"), dpi = 100)
png::writePNG(bitmap, paste0(output,"coefficientsFromScatterPlots_compareSVandGenus.png"))




#### SVAnalysis ####
input <- paste0(pipeRoot,"/",str_subset(dir(pipeRoot), "SVAnalysis"),"/output/")

bitmap <- pdf_render_page(paste0(input,"SV_BS_Assal.pdf"), dpi = 100)
png::writePNG(bitmap, paste0(output,"SV_BS_Assal.png"))





#### Diversity ####
input <- paste0(pipeRoot,"/",str_subset(dir(pipeRoot), "Diversity"),"/output/")

bitmap <- pdf_render_page(paste0(input,"Diversity.pdf"), dpi = 100)
png::writePNG(bitmap, paste0(output,"Diversity.png"))



#### Heatmap ####
input <- paste0(pipeRoot,"/",str_subset(dir(pipeRoot), "Heatmap"),"/output/")

bitmap <- pdf_render_page(paste0(input,"Genus_HeatmapAndCluster.pdf"), dpi = 100)
png::writePNG(bitmap, paste0(output,"Genus_HeatmapAndCluster.png"))



#### CompareStudiesMetagenomics ####
input <- paste0(pipeRoot,"/",str_subset(dir(pipeRoot), "CompareStudiesMetagenomics"),"/output/")

bitmap <- pdf_render_page(paste0(input,"Species_scatterPlots_MetagenomicsBSAndPalleja.pdf"), dpi = 100)
png::writePNG(bitmap, paste0(output,"Species_scatterPlots_MetagenomicsBSAndPalleja.png"))

bitmap <- pdf_render_page(paste0(input,"Species_coefficientsFromScatterPlots_MetagenomicsBSAndPalleja.pdf"), dpi = 100)
png::writePNG(bitmap, paste0(output,"Species_coefficientsFromScatterPlots_MetagenomicsBSAndPalleja.png"))

bitmap <- pdf_render_page(paste0(input,"Species_mainFigure3ab.pdf"), dpi = 100)
png::writePNG(bitmap, paste0(output,"Species_mainFigure3ab.png"))



#### CompareStudiesPathways ####
input <- paste0(pipeRoot,"/",str_subset(dir(pipeRoot), "CompareStudiesPathways"),"/output/")

bitmap <- pdf_render_page(paste0(input,"Pathway_scatterPlots_MetagenomicsBSAndPalleja.pdf"), dpi = 100)
png::writePNG(bitmap, paste0(output,"Pathway_scatterPlots_MetagenomicsBSAndPalleja.png"))

bitmap <- pdf_render_page(paste0(input,"Pathway_coefficientsFromScatterPlots_MetagenomicsBSAndPalleja.pdf"), dpi = 100)
png::writePNG(bitmap, paste0(output,"Pathway_coefficientsFromScatterPlots_MetagenomicsBSAndPalleja.png"))

bitmap <- pdf_render_page(paste0(input,"Pathway_mainFigure3de.pdf"), dpi = 100)
png::writePNG(bitmap, paste0(output,"Pathway_mainFigure3de.png"))



#### FigPerformrandomForest ####
input <- paste0(pipeRoot,"/",str_subset(dir(pipeRoot), "FigPerformrandomForest"),"/output/")
bitmap <- pdf_render_page(paste0(input,"performance_heatmap_randomForest.pdf"), dpi = 100)
png::writePNG(bitmap, paste0(output,"performance_heatmap_randomForest.png"))

bitmap <- pdf_render_page(paste0(input,"loso_performance_randomForest.pdf"), dpi = 100)
png::writePNG(bitmap, paste0(output,"loso_performance_randomForest.png"))




#### FigPerformlasso ####
input <- paste0(pipeRoot,"/",str_subset(dir(pipeRoot), "FigPerformlasso"),"/output/")

bitmap <- pdf_render_page(paste0(input,"performance_heatmap_lasso.pdf"), dpi = 100)
png::writePNG(bitmap, paste0(output,"performance_heatmap_lasso.png"))

bitmap <- pdf_render_page(paste0(input,"loso_performance_lasso.pdf"), dpi = 100)
png::writePNG(bitmap, paste0(output,"loso_performance_lasso.png"))



#### OppPathogens ####
input <- paste0(pipeRoot,"/",str_subset(dir(pipeRoot), "OppPathogens"),"/output/")

bitmap <- pdf_render_page(paste0(input,"OportunisticPathogens.pdf"), dpi = 100)
png::writePNG(bitmap, paste0(output,"OportunisticPathogens.png"))

