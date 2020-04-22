<h1> Helicorp. </h1>

<img src="https://cdn.discordapp.com/attachments/517058187715805191/702438634690838608/HighResScreenShot_2017-03-21_21-26-31.jpg"
     alt="Banniére"
     style="width:100px;float: left; margin-right: 10px;" />
     
<h2> Présentation du projet : </h2>

Ce projet vise à créer un site via l'outil Omeka-S.

<h2> Présentation de la base de données : </h2>

La base de données vise a representer les composants les plus importants d'un ordinateur. Un ordinateur est composé d'une carte Mére qui elle même pôsséde un socket, le socket est en clé etrangere de la carte mere. La carte est composé d'un processeur il est possible de mettre pluiseurs type de processeur mais, le processeur doit avoir le même socket que la carte mére. Ensuite la carte mére peut avoir different type de composant tel que une ou des barette de ram et aucune voir plusieurs carte graphique.

La carte mére doit être dans un chassi et le chassi est composé de aucun ou plusieurs ventilateur.

<h3> Explication détaillée des tables </h3>

<h4> Carte Mere </h4>

la carte mere est composé de :
<ul><li> Un Id qui permet d'identifier la carte</li>
     <li> Une marque, qui correspond au constructeur</li>
     <li> Un modele, qui correspond au modele de chipset installé</li>
     <li> Le format, qui correspond a la taille</li>
     <li> La couleur</li>
     <li> le nombre de PCI expresse</li>
     En clé Etrangére nous avons :<ul>
          <li> Un socket</li>
          <li> Un processeur (il faut faire attention que le socket soit bien compatible avec le processeur)</li>
          <li> Un numéro de chassis </li>
          </ul></ul>
          
le processeur est composé de :
<ul><li> D'un Id qui permet d'identifier le processeur</li>
     <li> Une marque, qui correspond au constructeur</li>
     <li> Un modele, qui correspond au modele de chipset installé</li>
     En clé Etrangére nous avons :<ul>
          <li> Un socket</li>
          </ul></ul>
          
le Radiateur est composé de :
<ul><li> D'un Id qui permet d'identifier le radiateur</li>
     <li> Une marque, qui correspond au constructeur</li>
     <li> Un modele</li>
     <li> Et de l'information si il s'agit d'un bloc water cooling </li>   </ul>
     
la carte graphique est composé de :
<ul><li> D'un Id qui permet de l'identifier</li>
     <li> Une marque, qui correspond au constructeur</li>
     <li> Un modele</li> </ul>

le ventilateur est composé de :
<ul><li> D'un Id qui permet de l'identifier</li>
     <li> Une marque, qui correspond au constructeur</li>
     <li> Un modele</li>
     <li> D'une taille</li> </ul>

Un chassis est composé de :
<ul><li> D'un ID qui permet de l'identifier</li>
     <li> D'une marque, qui correspond au constructeur</li>
     <li> Un format </li>
     <li> Et le nombre de ventilateur </li></ul>
