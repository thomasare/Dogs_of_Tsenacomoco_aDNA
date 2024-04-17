# Script Information 
 ## Code developed by Ariane Thomas
 ## Updated: 2023 December 14
 ## Citation: Thomas et al. 2023
 
#################################################################################################################

# Contents
 ## Libraries and Version Information
 ## Colors Used
 ## Maximum likelihood tree for all canids including Jamestown canids
 ## Sources

#################################################################################################################

 ## Libraries and Version Information
  ### R version 4.1.2 (2021-11-01)

library("ggtree")
  ### 1.18.1
library("ggplot2")
  ### 3.4.0
library("ape")
  ### 5.6-2
library("phytools")
  ### 2.0-3

#################################################################################################################

 ## Colors Used
  ### "Modern Dogs" = "gray"
  ### "Modern and Ancient Wolves" = "black"
  ### "Jamestown" = "red"
  ### "Ancient Dogs from the Americas" = "wheat2"
  ### "Ancient Dogs from Asia & Europe" = "orchid4"
  ### "Coyotes" = "aquamarine4"
  ### "Dingoes" = "yellow4"
  ### "Foxes" = "tomato3"
 
#################################################################################################################
 
 ## Maximum likelihood tree for all canids including Jamestown canids
  ### Create .tiff of ML tree from RAxML
   #### Set working directory to the location of the RAxML tree files (.tre)
setwd("/home/ariane/Documents/Dissertation/Analysis/DNA_projects/jamestown_mtDNA_phylogeny/ML_tree_alldogs/2023_12_22_ML_Final")

   #### Read tree file
dog_tree <- read.tree("RAxML_bestTree.Thomas_2024_ML_6jamestown.tre")
dog_tree
plotTree(dog_tree, ftype="i", fsize=0.4, lwd=1) # check to see the output
cat(readLines("RAxML_bestTree.Thomas_2024_ML_6jamestown.tre")) # view tree in Newick format
dog_labels <- dog_tree$tip.label

   #### Group labels by canid species, time, and location using grep
modern_coyotes <- grep("Canis_latrans_[R|S|J|B|c|D|M|V]|NC_008093", dog_labels)
modern_foxes <- grep("Vulpes_vulpes", dog_labels)
modern_redwolves <- grep("MZ367912", dog_labels)
ancient_redwolves <- grep("Canis_rufus_[NMNH|MCZ|YPM]", dog_labels)
modern_eastwolves <- grep("lycaon", dog_labels)
jamestown <- grep("JR", dog_labels)
modern_dingoes <- grep("Canis_lupus_dingo", dog_labels)
ancient_Siberian_dogs <- grep("CGG|TRF_02[0|2|4][1|5|6|9]|AL3023|AL3031|P0[4|5|9]|KM90|KBP|AL2998", dog_labels)
ancient_coyotes <- grep("ISM21C", dog_labels)
modern_dogs <- grep("FJ8173|AB49981|AY6567|DQ480|EU[408|789]|HM048871|KF66103[6|7]|KF907309|KJ[1|5]|KU29|S12_0692", dog_labels)
ancient_wolves <- grep("PRW89|Russia_33500|KF6610[8|9].*Canis_lupus_[B|A|S|R]|KF66107[8|9]|LR74275[8|7|9]_U_Arizona|AL2797|BELA_37371|OP_B1_M2|TRF_02_2[7|8|9]|AL2988|AL2989|AL2990|AL2991|AL2992|AL2994|AL2995|AL2997|AL3007|AL3032|AL305[2|3|4]|AL3080|Russia_22000|MZ367898", dog_labels)
modern_wolves <- grep("KF6610[3|4|5|6|7].*Canis_lupus_[F|C|R|S|I|P|U|O|C|A|M|U]|NMNH_76215|S14_0332", dog_labels)
ancient_European_dogs <- grep("KX|KF66109[3|4]", dog_labels)
ancient_Pacific_dogs <- grep("KT168|KY", dog_labels)
ancient_Asian_dogs <- grep("KF661082|AL3004|MN6996", dog_labels)
ancient_NA_dogs <- grep("5MT|AL3[1|2]|AM310|AM474|Argentina|CA[O|W]|CI[A|C|N|S]|Cox6|FR11|ISM[0|2|3][7|9|5]|JBG|LB2|May[1|2|3|4]|OSU6|P59|USA_[1|8][0|5]00|PRD[1|9]", dog_labels)
ancient_arctic_dogs <- grep("AL2784|AL2788|AL279[1|2|4|5]|560028|BELA_37369|BELA_3737[4|5]|BELA_52965|CK_H|DRG|KP_1|SEL_33|TRF_01_2[3|4|7]|TRF_02_1[4|6]|UA5|U_19|WAL_B9|2009_32|Greenland|KNK|2013KMG_|GL|Canada_204[1|0]|Canada_Sort|HJCL_9|KDDQ|KEDQ|KKDO|NAPI|NCPF|NHTN|OATI|OHRH|OJRL|OKRN|RBJR|RBJU|SGFQ|FortChurhill|Qilalukan|KKJG|KNK|NIHF|Doedemandsburgt|PP00128|Balto", dog_labels)  

   #### Combine into major groups
all_wolves <- c(modern_eastwolves, modern_redwolves, modern_wolves, ancient_redwolves, ancient_wolves)
coyotes <- c(ancient_coyotes, modern_coyotes)
ancient_americas <- c(ancient_NA_dogs, ancient_arctic_dogs)
ancient_asia_euro <- c(ancient_Asian_dogs, ancient_European_dogs, ancient_Pacific_dogs, ancient_Siberian_dogs)

   #### Sort the numbers of taxa in each group
wolf_sort <- sort(all_wolves)
coy_sort <- sort(coyotes)
amer_sort <- sort(ancient_americas)
asia_sort <- sort(ancient_asia_euro)
fox_sort <- sort(modern_foxes)
james_sort <- sort(jamestown)
dog_sort <- sort(modern_dogs)

   #### Check that the number of taxa in each combined group matches the total number of canids (n = 891)
checker <- list(wolf_sort, coy_sort, amer_sort, asia_sort, fox_sort, james_sort, dog_sort, modern_dingoes)
sum(lengths(checker))

   #### Output all the numbers of a given group and separate them only by comma to include them in the canid group
paste((wolf_sort), collapse= ",") #cycle through all 7 sorted groups

   #### Create list of all tip labels by grouping
canid_groups <- list(wolves = dog_labels[c(6,8,9,11,23,25,26,31,32,33,34,35,36,37,38,39,48,49,50,52,53,54,55,56,57,59,60,61,62,63,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,83,144,145,146,147,148,149,150,151,152,153,154,155,156,882,883,884,887)],
           coyotes = dog_labels[c(1,2,3,4,5,7,10,12,13,14,15,16,17,18,19,20,21,22,24,27,28,29,30)],
           ancient_americas = dog_labels[c(64,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,827,828,831,832,833,834,835,836,837,838,844,845,846,847,848,849,850,851,852,853,854,855,856,857,861)],
           ancient_asia_euro = dog_labels[c(51,58,117,157,158,159,205,206,225,226,229,232,236,237,238,239,240,241,242,244,249,250,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,792,793,794,862,863,864,865,867,868,869,870,871,872,878,879,880,881)],
           jamestown = dog_labels[c(826,829,830,858,859,860)], dingoes = dog_labels[c(245)],
           foxes = dog_labels[c(888,889,890,891)], 
           modern_dogs = dog_labels[c(40,41,42,43,44,45,46,47,80,81,82,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,227,228,230,231,233,234,235,243,246,247,248,251,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,795,796,797,798,799,800,839,840,841,842,843,866,873,874,875,876,877,885,886)])

   #### Double-check the number of taxa
sum(lengths(canid_groups))

   #### Create the ML tree and color them by canid group
tiff("MLalljamestown_Final.tiff", units="in", width=13, height=9, res=300)
ml_tree_circ_nobranchlen <- ggtree(dog_tree, layout = "circular", branch.length = "none") 
groupOTU(ml_tree_circ_nobranchlen, canid_groups, "Canids") + aes(color=Canids) + scale_color_manual(values = c("wheat2", "orchid4", "aquamarine4",
                                                                               "yellow4", "blue", "red", "gray",
                                                                               "black"),
                                                                    labels = na.omit(c("Ancient Dogs from the Americas", 
                                                                               "Ancient Dogs from Asia & Europe",
                                                                               "Coyotes", "Dingoes", "Foxes", 
                                                                               "Jamestown",
                                                                               "Modern Dogs", 
                                                                               "Ancient and Modern Wolves"))) + 
  theme(legend.position = "right", legend.text = element_text(size = 17), legend.title = element_blank()) + guides(color = guide_legend(override.aes = list(linewidth = 2.5)))
dev.off()

#################################################################################################################

 ## Sources:
  ### 1. https://www.geeksforgeeks.org/create-comma-separated-vector-in-r/
  ### 2. https://yulab-smu.top/treedata-book/chapter6.html
