load /home/floris/Documenten/Hanze_Bioinformatica/Jaar_3/Kwartaal_10/Alphafold/mutant_gromacs/vegf2mutant.pdb, vegf2mutant
load /home/floris/Documenten/Hanze_Bioinformatica/Jaar_3/Kwartaal_10/Alphafold/mutant_gromacs/vegf2mutant-MD.xtc

load /home/floris/Documenten/Hanze_Bioinformatica/Jaar_3/Kwartaal_10/Alphafold/canonical_gromacs/vegf2.pdb, vegf2
load /home/floris/Documenten/Hanze_Bioinformatica/Jaar_3/Kwartaal_10/Alphafold/canonical_gromacs/vegf2-MD.xtc

remove resn sol+na+cl

intra_fit vegf2mutant
intra_fit vegf2

align vegf2mutant, vegf2


color green, vegf2
color magenta, vegf2mutant

get_view 

set_view


ray 3000,3000

png ~/vegf2_vegf2mutant.png

