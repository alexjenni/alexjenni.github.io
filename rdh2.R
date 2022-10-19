if (!requireNamespace("remotes")) {
  install.packages("remotes")
}
remotes::install_github("kolesarm/RDHonest")

df <- data.frame(y, x)
dl <- RDData(df, cutoff = 700)
M <- NPR_MROT.fit(dl)
rdh=RDHonest(y~x,cutoff=700, kern="uniform", M=M, sclass="H", opt.criterion = "MSE")

rdh=RDHonest(y~x,cutoff=700, kern="optimal", M=0.01, opt.criterion = "MSE")