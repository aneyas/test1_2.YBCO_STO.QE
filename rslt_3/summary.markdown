# Second results obtained with "Quantum Espresso"

The results are for 4 layers of YBCO and 4 layers of STO, a total of 75 atoms.

## YBCO-STO (4+4)
- The system is not completed relaxed, but I believe it is quite close as can be seen from the energy versus relaxation iterations.  
	![Total energy versus relaxation.][image-1]
- The system is shown in the image. Note the bottom layer is a Ti-O layer.  
	![Configuration.][image-2]

## Atom postions


- Here I list the positions of selected atoms in the SrTiO3 layer before and after relaxation.
	- The Sr atoms:
		The x,y postitions of Sr atoms are (0.5,0.5) and don't change in the relaxation process.
	- The O atoms
		The x,y postitions of the O atoms I am interestend are (0.0,0.0) and don't change in the relaxation process.
	- The Ti atoms
		The x,y postitions of Ti atoms are (0.0,0.0) and don't change in the relaxation process.

- The initial postitions are at their ideal positions, they are here to double check if things work as expected.

### The data
```  
#Sr(Init) Ti(Init) O(Init) Sr(Relaxed) Ti(Relaxed) O(Relaxed)  
0.025235 0.000000 0.025235 0.024393 0.001220 0.024434  
0.075706 0.050471 0.075706 0.075853 0.051195 0.075076  
0.126177 0.100942 0.126177 0.126663 0.101707 0.125744  
0.176648 0.151413 0.176648 0.177458 0.152774 0.176727  
```

- Note the lattice constants (z component) is 78.14397 angstrom before relaxation, and 78.10835 angstrom after.  

### Regarding to changes.

- Since the inital atom postions are set at their ideal positions. So I can compare Ti-O distance (z component)  to get an idea of how the structure distorted in the film with respect to its bulk positions.

	Here is the figure showing the Ti-O distance layer by layer from bottom to the interface. The straight line there is the ideal distance in bulk.   
	![Ti-O distance.][image-3]

	This figure clearly shows that Ti atoms had shifted upward with respect to oxygen octahedra, likely producing a polarization upward. However, the results indicate that the polarization persists 4 layers below the interface, which seems not consistent with experiment.

- We can also have an idea about how the lattice constant changes (z component) layer by layer by measing the distances between O atoms. This figure  shows the results.  
	![Lattice constant.][image-4]
	- Note, in this plot, x-index 4 is about the STO layer directly below the YBCO-STO interface, x-index 3 is the 2nd STO below the interface, x-index 2 is the 3rd STO layer below the interface.
	- It is worthing noting that the ideal lattice constant of STO is 3.944 angstrom (ab initio values). Therefore this results shows that all the STO lattices are stretched along z and, more importantly, the stretch is larger as the layer get closer to the interface. Hope the result is consistant with experimental.  
		  
		  
		  


[image-1]:	check_energy_relaxation.pdf "Total energy versus relaxation."
[image-2]:	init_CFG.analysis.pdf "The configuration of 4 layers YBCO and 4 layers of STO (a total of 75 atoms)."
[image-3]:	atom_positions.pdf "Ti-O distances."
[image-4]:	lattice_constant.pdf "Lattice constant."
