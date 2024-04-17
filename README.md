# The Dogs of Tsenacomoco: Ancient DNA Reveals the Presence of Local Dogs at Jamestown Colony in the Early Seventeenth Century

### Abstract
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
<li>JR22647_makefile.yaml</li>
  <ul>
    <li>Example of a makefile for PALEOMIX pipeline to map FASTQ files of samples to dog mitochondrial genome.</li>
  </ul>
<li>Thomas_2024_jamestownbalto_aligntrim.fas</li>
<ul>
  <li>Complete fasta alignment of all modern and ancient dogs, wolves, coyotes, and dingoes and foxes.</li>
  <li>Fasta file includes Balto from Moon <em>et al.</em> 2023. </li>
  <li>Fasta file was aligned using MUSCLE in MEGA 10.1.8 then manually curated by Ariane E. Thomas. </li>
  <li>Fasta file includes six, high quality (greater than 5x coverage) Jamestown sequences.</li>
</ul>
<li>RAxML_GUI_Settings_Thomas_2024_ML_6jamestown.txt</li>
  <ul>
    <li>Specifications for maximum likelihood tree and version of RAxML used to generate Figure 4 (A) in the main paper.</li>
  </ul>
<li>RAxML_bestTree.Thomas_2024_ML_6jamestown.tre</li>
  <ul>
    <li>Output file from RAxML that was used to generate Figure 4 (A) in main paper.</li>
    <li>Input file for the R script file included below.</li>
  </ul>
<li>Thomas_2024_RAxML_tree_creation.R</li>
  <ul>
    <li>R script used to generate Figure 4 (A).</li>
  </ul>
<li>Samples_Jamestown_Paper.xlsx</li>
  <ul>
    <li>Column names are name in fasta file, study, Species (based on mtDNA), Age, Repository, and Accession.</li>
    <li>The first column contains the name of the sequence as it is found in the fasta file.</li>
    <li>Study refers to the source publication the sequence was first used. Some sequences have not yet been published, but are available in GenBank and have been labeled "unpublished"</li>
    <li>The third column, species (based on mtDNA), is the species designation listed in repository or study.</li>
    <li>The fourth column, age, has to possible categorizations: modern or ancient. Ancient refers to archaeological specimens, and predate 1950. Most of the modern samples were collected after 2000.</li>
    <li>The fifth column, repository, is the database housing the sample. Repositories used in this study were from GenBank, Dyrad, ENA (the European Nucleotide Archive), and SRA (Sequence Read Archive).</li>
    <li>The final column is the accession number given to that sample.</li>
    <li>File contains information including accessions used in the original multiple sequence alignment for the maximum likelihood tree.</li>
    <li>File contains duplicated sequences that were removed from the alignment identified by RAxML.</li>
  </ul>
<li>jamestown_2023_12_04_tipdates_strict_HKYIG_constant_250m_1.xml</li>
<ul>
  <li>The file naming convention is the project, jamestown, the date the file was created, tipdates if ages of the samples were included (dates of the branch tips), the type of molecular clock model used (strict), the subsitution model, HKY, with invariant sites and gamma, with a constant tree prior, and the number of chains, 250 million.</li>
  <li>Not all the files are listed here, but I duplicated this file twice and replaced the "_1" with "_2" and "_3".</li>
  <li>All three runs were combined using LogCombiner and resampled every 250000 with 10% burnin.</li>
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
</ol>
 
