

load /home/floris/Documenten/Hanze_Bioinformatica/Jaar_3/Kwartaal_10/Alphafold/mutant_gromacs/vegf2mutant.pdb, vegf2mutant
load_traj /home/floris/Documenten/Hanze_Bioinformatica/Jaar_3/Kwartaal_10/Alphafold/mutant_gromacs/vegf2mutant-MD.xtc, vegf2mutant, 1,

load /home/floris/Documenten/Hanze_Bioinformatica/Jaar_3/Kwartaal_10/Alphafold/canonical_gromacs/vegf2.pdb, vegf2
load_traj /home/floris/Documenten/Hanze_Bioinformatica/Jaar_3/Kwartaal_10/Alphafold/canonical_gromacs/vegf2-MD.xtc, vegf2, 1,

remove resn sol+na+cl

intra_fit vegf2mutant
intra_fit vegf2

align vegf2mutant, vegf2

color green, vegf2
color magenta, vegf2mutant 


set_view (\
     0.922900677,    0.199289486,    0.329441577,\
     0.294477135,   -0.916582048,   -0.270468354,\
     0.248056859,    0.346631348,   -0.904608190,\
     0.000013635,   -0.000073875, -249.177322388,\
   102.586784363,   99.647575378,   47.628433228,\
   170.034896851,  328.359497070,  -20.000000000)


ray 3000,2000

png ~/vegf2_vegf2mutant.png

# Animatie:

mset 1 x360  
util.mroll(1,360,1)
set ray_trace_frames, 0 
movie.produce /home/floris/vegf2_vegf2mutant_animation.mp4, quality=90