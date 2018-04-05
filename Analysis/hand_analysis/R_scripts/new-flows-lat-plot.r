library(plyr)
library(ggplot2)

## Summarizes data.
## Gives count, mean, standard deviation, standard error of the mean, and confidence interval (default 95%).
##   data: a data frame.
##   measurevar: the name of a column that contains the variable to be summariezed
##   groupvars: a vector containing names of columns that contain grouping variables
##   na.rm: a boolean that indicates whether to ignore NA's
##   conf.interval: the percent range of the confidence interval (default is 95%)
summarySE <- function(data=NULL, measurevar, groupvars=NULL, na.rm=FALSE,
                      conf.interval=.95, .drop=TRUE) {
    library(plyr)

    # New version of length which can handle NA's: if na.rm==T, don't count them
    length2 <- function (x, na.rm=FALSE) {
        if (na.rm) sum(!is.na(x))
        else       length(x)
    }

    # This does the summary. For each group's data frame, return a vector with
    # N, mean, and sd
    datac <- ddply(data, groupvars, .drop=.drop,
      .fun = function(xx, col) {
        c(N    = length2(xx[[col]], na.rm=na.rm),
          mean = mean   (xx[[col]], na.rm=na.rm),
          sd   = sd     (xx[[col]], na.rm=na.rm)
        )
      },
      measurevar
    )

    # Rename the "mean" column    
    datac <- rename(datac, c("mean" = measurevar))

    datac$se <- datac$sd / sqrt(datac$N)  # Calculate standard error of the mean

    # Confidence interval multiplier for standard error
    # Calculate t-statistic for confidence interval: 
    # e.g., if conf.interval is .95, use .975 (above/below), and use df=N-1
    ciMult <- qt(conf.interval/2 + .5, datac$N-1)
    datac$ci <- datac$se * ciMult

    return(datac)
}

all_data <- data.frame(V1=integer(), V2=integer(),
                       V3=integer(), V4=integer(),
                       middlebox=character())

netfilter <- read.table("/home/rishabh/Analysis/hand_analysis/prefstats/nopref/_home_necto_vnds_nf_vignat-mg-new-flows-latency.results")
netfilter["middlebox"] <- "No Prefetching"
vignat <- read.table("/home/rishabh/Analysis/hand_analysis/prefstats/pref/_home_necto_vnds_nf_vignat-mg-new-flows-latency.results")
vignat["middlebox"] <- "Prefetching"

all_data <- rbind(all_data, netfilter)
all_data <- rbind(all_data, vignat)

#TODO rep rows appropriate number of times

all_data <- all_data[rep(row.names(all_data), all_data$V3), 1:5]
data_summary <- summarySE(all_data, measurevar="V4", groupvars=c("V1", "middlebox"))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

pd <- position_dodge(2)

p <- ggplot(data_summary, aes(x=V1/1e3, y=V4/1e3,
                              group=middlebox,
                              color=middlebox,
                              shape=middlebox)) +
     geom_point(size=3,position=pd) +
     geom_line() +
     geom_errorbar(aes(ymin=(V4-ci)/1e3, ymax=(V4+ci)/1e3), width=.01,
                   position=pd) +
     labs(title="Latency for ~100Kpkt/s. 500 new flows/s") +
     xlab("# concurrent flows (K)") +
     ylab(bquote("1-way latency, only new flows, "*mu*"s")) +
     theme_bw() +
#     expand_limits(x=0,y=0) +
#     coord_cartesian(ylim=c(0,20)) +
     scale_x_continuous(breaks=c(1,10,20,30,40,50,60,64)) +
     theme( plot.margin = unit( c(0,0,0,0) , "in" ) )

ggsave(filename="latency-new-flows.png", width=8, height=4)
print(p)
