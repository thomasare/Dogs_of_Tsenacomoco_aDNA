# The Dogs of Tsenacomoco: Ancient DNA Reveals the Presence of Local Dogs at Jamestown Colony in the Early Seventeenth Century

### Description
Multiple studies have demonstrated that European colonization of the Americas led to the death of nearly all
North American dog mitochondrial lineages and replacement with European ones sometime between AD
1492 and the present day. Historical records indicate that colonists imported dogs from Europe to North
America, where they became objects of interest and exchange as early as the seventeenth century.
However, it is not clear whether the earliest archaeological dogs recovered from colonial contexts were of
European, Indigenous, or mixed descent. To clarify the ancestry of dogs from the Jamestown Colony,
Virginia, we sequenced ancient mitochondrial DNA from six archaeological dogs from the period 1609–
1617. Our analysis shows that the Jamestown dogs have maternal lineages most closely associated with
those of ancient Indigenous dogs of North America. Furthermore, these maternal lineages cluster with
dogs from Late Woodland, Hopewell, and Virginia Algonquian archaeological sites. Our recovery of
Indigenous dog lineages from a European colonial site suggests a complex social history of dogs at the inter-
face of Indigenous and European populations during the early colonial period.

### Principal Investigator and Data Manager
Name: Ariane E. Thomas\
ORCID:0000-0001-9142-8122\
Email: arianethomas59@gmail.com or ariane-thomas@uiowa.edu

### Alternate Contact 
Name: Andrew Kitchen\
Insitution: University of Iowa\
Address: 129 Macbride Hall, Iowa City, IA 52242\
Email: andrew-kitchen@uiowa.edu

### Contributors 
<ul>
  <li>Matthew E. Hill, Jr.</li>
  <li>Leah Stricker</li>
  <li>Michael Lavin</li>
  <li>David Givens</li>
  <li>Alida de Flamingh</li>
  <li>Kelsey E. Witt</li>
  <li>Ripan S. Malhi</li>
</ul>

### File Names and Relative Information
<ol>
<li>Thomas_2024_allcanids_all20jamestown_balto_align_trim.fas</li>
<ul>
  <li>Complete fasta alignment of all modern and ancient dogs, wolves, coyotes, and dingoes and foxes.</li>
  <li>Fasta file includes Balto from Moon <em>et al.</em> 2023. </li>
  <li>Fasta file was aligned using MUSCLE in MEGA 10.1.8 then manually curated by Ariane E. Thomas. </li>
  <li>Fasta file includes all Jamestown sequences regardless of DNA quality.</li>
  <li>Low quality Jamestown sequences were generated using ANGSD 0.937 using a minimum depth of 2.</li>
</ul>
<li>RAxML_GUI_Settings_Thomas_2024_allcanids_all20jamestown_check.txt</li>
  <ul>
    <li>Specifications for maximum likelihood tree and version of RAxML.</li>
  </ul>
<li>RAxML_bestTree.Thomas_2024_allcanids_all20jamestown_check.tre</li>
  <ul>
    <li>Output file from RAxML that was used to generate the maximum likelihood tree in Supplemental Text 2: Low-quality Data for Fourteen Jamestown Canids.</li>
    <li>Input file for the R script file included below.</li>
  </ul>
<li>MLtreecreationscript.R</li>
  <ul>
    <li>R script used to generate figures in Supplemental Text 2: Low-quality Data for Fourteen Jamestown Canids including magnification figures.</li>
  </ul>
<li>getnewfastafiles.sh</li>
  <ul>
    <li>Bash script used generate consensus sequences using ANGSD with a minimum depth of 2.</li>
    <li>Script can also be used to combine all fasta files into one file.</li>
  </ul>
<li>countbp.py</li>
  <ul>
    <li>Python script used to count the number of bases from each Jamestown sequence file (fasta).</li>
    <li>Data generated from this script was input into the file below: dataonlowqualitydna.xlsx.</li>
  </ul>
<li>dataonlowqualitydna.xlsx</li>
<ul>
  <li>Column names are Sample, Base Pair Count, Bootstrap Support (out of 100), ML Clade, and Meet 4000 bp minimum.</li>
  <li>The sample column is the sample name for the 14 low-quality sequences.</li>
  <li>The base pair column is the estimated count of basepairs in the sequence without counting Ns or gaps.</li>
  <li>Bootstrap Support (out of 100) column is the bootstrap value for the sample in the topology out of 100 bootstrap replicates for the maximum likelihood tree.</li>
  <li>The ML clade column categorizes the most recent last common ancestor of the sample. There are two possible categories in this column: Modern dogs or ancient North America.</li>
  <li>The final column, Meet 4000bp pair minimum, is based on unpublished data that found major changes to the ancient North American dog topology first reported by Ní Leathlobhair <em>et al.</em> 2018 when sequences 
    were truncated to 4000 bp or less. Specifically, sequences switched between the two major clades in the ancient North American dog mitochondrial tree that diverged over 15,000 years ago.</li>
</ul>
</ol>

### Sharing and Access Information
Link to Publication: doi:10.1017/aaq.2024.25\
Recommended Citation: Thomas, Ariane E., Matthew E. Hill Jr., Leah Stricker, Michael Lavin, David Givens, Alida de Flamingh, Kelsey
E. Witt, Ripan S. Malhi, and Andrew Kitchen. 2024. The Dogs of Tsenacomoco: Ancient DNA Reveals the Presence of Local
Dogs at Jamestown Colony in the Early Seventeenth Century. GitHub repository. https://github/thomasare/Dogs_of_Tsenacomoco_aDNA.

### References
<ol>
<li>Moon, Katherine L., Heather J. Huson, Kathleen Morrill, Ming-Shan Wang, Xue Li, Krishnamoorthy Srikanth, Zoonomia Consortium, Kerstin Lindblad-Toh, Gavin J. Svenson, Elinor K. Karlsson, and Beth Shapiro 2023​ Comparative genomics of Balto, a famous historic dog, captures lost diversity of 1920s sled dogs. Science 380(6643):eabn5887. DOI:10.1126/science.abn5887.</li>
<li>Ní Leathlobhair, Máire, Angela R. Perri, Evan K. Irving-Pease, Kelsey E. Witt, Anna Linderholm, James Haile, Ophelie Lebrasseur, Carly Ameen, Jeffrey Blick, Adam R. Boyko, Selina Brace, Yahaira Nunes Cortes, Susan J. Crockford, Alison Devault, Evangelos A. Dimopoulos, Morley Eldridge, Jacob Enk, Shyam Gopalakrishnan, Kevin Gori, Vaughan Grimes, Eric Guiry, Anders J. Hansen, Ardern Hulme-Beaman, John Johnson, Andrew Kitchen, Aleksei K. Kasparov, 
    Young-Mi Kwon, Pavel A. Nikolskiy, Carlos Peraza Lope, Aurélie Manin, Terrance Martin, Michael Meyer, Kelsey Noack Myers, Mark Omura, Jean-Marie Rouillard, Elena Y. Pavlova, Paul Sciulli, 
    Mikkel-Holger S. Sinding, Andrea Strakova, Varvara V. Ivanova, Christopher Widga, Eske Willerslev, Vladimir V. Pitulko, Ian Barnes, M. Thomas P. Gilbert, Keith M. Dobney, Ripan S. Malhi, Elizabeth P. Murchison, 
    Greger Larson, and Laurent A. F. Frantz 2018 The evolutionary history of dogs in the Americas. Science 361(6397):81–85. DOI:10.1126/science.aao4776</li>
</ol>
 
