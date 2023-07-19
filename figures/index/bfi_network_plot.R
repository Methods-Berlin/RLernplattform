library(bootnet)
library(psychTools)
library(GGally)
library(network)
library(sna)
library(plotly)

results <- estimateNetwork(psychTools::bfi[,grepl(pattern = "[OCEAN]+", x = colnames(psychTools::bfi))],
                           default = "EBICglasso",
                           corMethod = "cor_auto",
                           tuning = .5)

n <- network::network(results$graph, directed = FALSE)
n %e% "weight" <- 5*abs(results$graph)/max(abs(results$graph))

pal <- c("#FF0000", "#CC0033", "#990066",
         "#660099", "#3300CC", "#0000FF")
col_is <- round(1 + (length(pal)-1)*(results$graph - min(results$graph))/max(results$graph - min(results$graph)))
n %e% "color" <- matrix(pal[c(col_is)], nrow(results$graph), ncol(results$graph))
plt <- ggnet2(n,
       edge.size = "weight",
       edge.color = "color",
       edge.alpha = .7,
       node.label = TRUE)
plt

Noax <- list(
  title = "",
  zeroline = FALSE,
  showline = FALSE,
  showticklabels = FALSE,
  showgrid = FALSE
)

pltly <- ggplotly(plt) %>%
  layout(xaxis = Noax,
         yaxis = Noax)

