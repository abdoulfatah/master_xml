<?xml version="1.0" encoding="utf-8" ?>



<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xhtml="http://www.w3.org/1999/xhtml">

        <xsl:variable name="description">
 					
 		<div class="titre">Présentation du Master « Informatique »</div>
 			<div class="contenu">
 					<p>
 			Le master « informatique » a pour vocation la formation de
 			professionnels de l'informatique au niveau bac+5. L'objectif est
 			d'offrir aux etudiants une large palette de competences et de savoirs
 			afin de rendre accessible des emplois de haut niveau dans le monde de
 			la recherche, dans celui de l'entreprise ou dans d'autres
 			organisations. Notre ambition est de former des etudiants dont les
 			competences sont tout a fait comparables a celles acquises dans les
 			meilleurs ecoles d'ingenieurs.

 		</p>
 		<p>
 			Le Master informatique repose sur plus de 25 ans d'experience
 			d'enseignement d'informatique sur l'Universite d'Aix-Marseille
 			(maitrise, DEA et DESS en informatique) et s'est structure lors du
 			passage au LMD. Si vous n'etes pas familier des formations organisees
 			suivant le schema Licence/Master/Doctorat, nous vous conseillons de
 			lire cette petite introduction.
 		</p>
 					<p>

 			Le Master Informatique s'appuie principalement sur les compétences de
 			deux laboratoires reconnus :
 			<ul>
 				<li>
 					<a href="http://www.lif.univ-mrs.fr/">Laboratoire d'Informatique Fondamentale de Marseille
 						(LIF)</a>
 				</li>
 				<li>
 					<a href="http://www.lsis.org/"> Laboratoire des Sciences de l'Information et des
 						Systèmes (LSIS)</a>
 				</li>
 			</ul>
 		</p>
 		<p>La master est enseigné à Marseille sur le campus de Luminy (site
 			sud) et sur le campus de l'Étoile (site nord) qui regroupe
 			Château-Gombert et Saint-Jérôme.

 		</p>
 		<p>

 			Notre offre de formation au niveau Bac+5 est organisée autour de deux
 			axes forts :
 			<ul>
 				<li>
 					Le master est structuré sous la forme d'une
 					<a href="parcours/specialites/SPE_MASTER1.html"> première année
 						commune (M1)</a>
 					et dupliquée sur les sites sud et nord, suivie d'une
 					deuxième année
 					de spécialisation (M2).
 				</li>
 				<li>
 					La
 					<strong>deuxième année</strong>
 					est composée de sept spécialités. Deux à
 					finalité recherche, et cinq
 					à finalité professionnelle. Certaines
 					spécialités sont ensuite
 					déclinées en plusieurs parcours. Ces
 					spécialités sont localisées à
 					Luminy ou à Saint-Jérôme en fonction
 					des compétences locales.
 				</li>

 			</ul>
 		</p>
 		</div>
		</xsl:variable>
	<!-- NOEUD MASTER -->
	<xsl:template match="master">

		<!-- Description des unités d'enseignement -->
		<xsl:result-document href="parcours/unites.html">
			<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
			<html xmlns="http://www.w3.org/1999/xhtml">
				<head>
					<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
					<link rel="stylesheet" type="text/css" href="../css/master.css" />
					<title>
						Liste des UEs
					</title>
				</head>
				<body>
					<div class="header">
						<img alt="image" src="../css/img/logo.png"></img>
						<h1>MASTER INFORMATIQUE DE MARSELLE</h1>
					</div>
					<div class="navigation">
						<xsl:call-template name="menu">
							<!-- Nous sommes a la racine -->
							<xsl:with-param name="link" />
						</xsl:call-template>
					</div>
					<center>
						<h1>Les unités d'enseignements</h1>
					</center>
					<div class="body">
						<div class="titre">
							Les unites triées par code
						</div>
						<div class="contenu">
							<xsl:for-each select="//unite">
								<a href="../enseignements/{@id}.html">
									[
									<xsl:value-of select="@id" />
									]
								</a>
							</xsl:for-each>
						</div>
						<div class="titre">
							Les UEs du master
						</div>
						<div class="contenu">
							<table>
								<tr>
									<td>Code</td>
									<td>Nom</td>
								</tr>
								<xsl:for-each select="//unite">
									<tr>
										<td>
											<a href="../enseignements/{@id}.html">
												<xsl:value-of select="@id" />
											</a>
										</td>
										<td>
											<a>
												<xsl:value-of select="nom" />
											</a>
										</td>
									</tr>
								</xsl:for-each>
							</table>
						</div>
					</div>
				</body>
			</html>
		</xsl:result-document>


		<!-- Description des intervenants -->
		<xsl:result-document href="parcours/intervenants.html">
			<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
			<html xmlns="http://www.w3.org/1999/xhtml">
				<head>
					<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
					<link rel="stylesheet" type="text/css" href="../css/master.css" />
					<title>Liste des Intervenants						</title>
				</head>
				<body>
					<div class="header">
						<img alt="logo" src="../css/img/logo.png"></img>
						<h1>MASTER INFORMATIQUE DE MARSELLE</h1>
					</div>
					<div class="navigation">
						<xsl:call-template name="menu">
							<xsl:with-param name="link" />
						</xsl:call-template>
					</div>
					<center>
						<h1>Les intervenants du Master Informatique</h1>
					</center>
					<div class="body">
						<div class="titre">Une première liste</div>
						<div class="contenu">
							<p>L'équipe pedagogique est en cours de constitution. Cette liste
								sera completée en avril 2018.
							</p>
							<table>
								<tr>
									<td>Nom</td>
									<td>Téléphon</td>
									<td>Courriel</td>
									<td>Web</td>
								</tr>
								<xsl:for-each select="//intervenant">
									<tr>
										<td>
											<a href="../intervenants/{@id}.html">
												<xsl:value-of select="nom" />
											</a>
										</td>
										<td>
											<xsl:value-of select="telephone" />
										</td>
										<td>
											<xsl:value-of select="mail" />
										</td>
										<td>
											<xsl:value-of select="siteWeb" />
										</td>
									</tr>
								</xsl:for-each>
							</table>
						</div>
					</div>
				</body>
			</html>
		</xsl:result-document>



		<!-- Production une page XHTML par intervenant -->
		<xsl:for-each select="//intervenant">
			<xsl:result-document href="intervenants/{@id}.html">
				<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
				<html xmlns="http://www.w3.org/1999/xhtml">
					<head>
						<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
						<link rel="stylesheet" type="text/css" href="../css/master.css" />
						<title>
							<xsl:value-of select="nom" />
						</title>
					</head>
					<body>
						<div class="header">
							<img alt="logo" src="../css/img/logo.png"></img>
							<h1>MASTER INFORMATIQUE DE MARSELLE</h1>
						</div>
						<xsl:apply-templates select="." />
					</body>
				</html>
			</xsl:result-document>
		</xsl:for-each>

		<!-- Generation Page specialite -->
		<xsl:for-each select="//specialite">
			<xsl:result-document href="parcours/specialites/{@id}.html">
				<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
				<html xmlns="http://www.w3.org/1999/xhtml">
					<head>
						<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
						<link rel="stylesheet" type="text/css" href="../../css/master.css" />
						<title>
							<xsl:value-of select="nom" />
						</title>
					</head>
					<body>
						<div class="header">
							<img alt="image" src="../../css/img/logo.png"></img>
							<h1>MASTER INFORMATIQUE DE MARSELLE</h1>
						</div>
						<div class="navigation">
							<xsl:call-template name="menu">
								<xsl:with-param name="link">
									../
								</xsl:with-param>
							</xsl:call-template>
						</div>
						<div class="body">
							<xsl:apply-templates select="." />
						</div>
					</body>
				</html>
			</xsl:result-document>
		</xsl:for-each>

		<!-- Generation une page XHTML par UE -->
		<xsl:for-each select="//unite">
			<xsl:result-document href="enseignements/{@id}.html">
				<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
				<html xmlns="http://www.w3.org/1999/xhtml">
					<head>
						<link rel="stylesheet" type="text/css" href="../css/master.css" />
						<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
						<title>
							<xsl:value-of select="nom" />
						</title>
					</head>
					<body>
						<div class="header">
							<img alt="image" src="../css/img/logo.png"></img>
							<h1>MASTER INFORMATIQUE DE MARSELLE</h1>
						</div>
						<xsl:apply-templates select="." />
					</body>
				</html>
			</xsl:result-document>
		</xsl:for-each>

		<!-- Génération d'une page XHTML par parcour -->
		<xsl:for-each select="//parcour">
			<xsl:result-document href="parcours/{@id}.html">
				<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
				<html xmlns="http://www.w3.org/1999/xhtml">
					<head>
						<link rel="stylesheet" type="text/css" href="../css/master.css" />
						<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
						<title>
							<xsl:value-of select="nom" />
						</title>
					</head>
					<body>
						<div class="header">
							<img alt="image" src="../css/img/logo.png"></img>
							<h1>MASTER INFORMATIQUE DE MARSELLE</h1>
						</div>
						<div class="navigation">
							<xsl:call-template name="menu">
								<xsl:with-param name="link" />
							</xsl:call-template>
						</div>
						<div class="body">
							<div class="titre">
								<xsl:value-of select="nom" />
							</div>
							<div class="contenu">
								Responsables :
								<xsl:for-each select="ref-specialite">
									<xsl:variable name="ref" select="@ref" />
									<ul>
										<xsl:for-each select="//specialite">
											<!--On peut aussi mettre la condition en XPATH dans le select -->
											<xsl:if test="$ref = @id">
												<xsl:apply-templates select="responsable/ref-intervenant" />
											</xsl:if>
										</xsl:for-each>
									</ul>
								</xsl:for-each>
								<xsl:value-of select="description" />
								<br />
								<xsl:for-each select="ref-specialite">
									<xsl:variable name="ref" select="@ref" />
									<ul>
										<xsl:for-each select="//specialite">
											<xsl:if test="$ref = @id">
												<li>
													<a href="specialites/{$ref}.html">
														<xsl:value-of select="nom" />
													</a>
												</li>
											</xsl:if>
										</xsl:for-each>
									</ul>
								</xsl:for-each>
							</div>
						</div>
					</body>
				</html>
			</xsl:result-document>
		</xsl:for-each>

		<!-- Squelette de l' index HTML -->
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
		<html>
			<head>
				<link rel="stylesheet" type="text/css" href="css/master.css" />
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
				<title>Master Informatique de Marseille</title>
			</head>
			<body>
				<div class="header">
					<img src="css/img/logo.png" alt="logo"></img>
					<h1>MASTER INFORMATIQUE DE MARSELLE</h1>
				</div>
				<div class="navigation">
					<xsl:call-template name="menu">
						<xsl:with-param name="link">
							parcours/
						</xsl:with-param>
					</xsl:call-template>
				</div>
				<div class="body">
					<xsl:copy-of select="$description" />
				</div>
			</body>
		</html>
	</xsl:template>
	<!-- FIN NOEUD MASTER -->

	<!-- NOEUD PARCOURS -->
	<!-- Generation du menu -->
	<xsl:template name="menu">
		<xsl:param name="link" />
		<ul>
			<li>
				<strong>PARCOURS</strong>
			</li>

			<xsl:for-each select="//parcour">
				<!-- Plus d'une specialite -->

				<xsl:if test="count(ref-specialite) > 1 ">
					<li>
						<a href="{$link}{@id}.html">
							<strong>
								<xsl:value-of select="nom" />
							</strong>
						</a>
						<xsl:for-each select="ref-specialite">
							<xsl:call-template name="genererSpecialite">
								<xsl:with-param name="link">
									<xsl:value-of select="$link" />
								</xsl:with-param>
								<xsl:with-param name="ref">
									<xsl:value-of select="@ref" />
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</li>
				</xsl:if>
				<!-- Une seule specialite -->
				<xsl:if test="count(ref-specialite) = 1 ">
					<li>
						<a href="{$link}specialites/{ref-specialite/@ref}.html">
							<strong>
								<xsl:value-of select="nom" />
							</strong>
						</a>
					</li>
				</xsl:if>
			</xsl:for-each>
			<li>
				<a href="{$link}unites.html">
					<strong>
						Les unités
					</strong>
				</a>
			</li>
			<li>
				<a href="{$link}intervenants.html">
					<strong>
						Les intervenants
					</strong>
				</a>
			</li>
		</ul>
	</xsl:template>

	<!-- Generer specialites -->
	<xsl:template name="genererSpecialite">
		<xsl:param name="link" />
		<xsl:param name="ref" />
		<ul>
			<li>
				<a href="{$link}specialites/{$ref}.html">
					<xsl:value-of select="//specialite[@id = $ref]/nom" />
				</a>
			</li>
		</ul>
	</xsl:template>
	<!-- FIN NOEUD REF SEPCIALITE -->

	<!-- NOEUD ref-intervenant -->
	<xsl:template match="ref-intervenant">
		<xsl:variable name="ref" select="@ref" />
		<xsl:for-each select="//intervenant">
			<!-- Test condition sans XPTATH -->
			<xsl:if test="$ref = @id">
				<li>
					<a href="../intervenants/{$ref}.html">
						<xsl:value-of select="nom" />
					</a>
				</li>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	<!-- FIN NOEUD ref-intervenant -->

	<!-- NOEUD SEMESTRES -->
	<xsl:template match="semestres">
		<ul>
			<xsl:for-each select="semestre">
				<li>
					Semestre :
					<xsl:value-of select="@id" />
				</li>
				<xsl:for-each select="blocs/bloc">
					<h2>
						<xsl:value-of select="@titre" />
						<xsl:value-of select="@etat" />
					</h2>
					<ul>
						<xsl:for-each select="ref-unite">
							<xsl:variable name="ref" select="@ref" />
							<li>
								<a href="../enseignements/{@ref}.html">
									<xsl:value-of select="//unite[@id = $ref]/nom" />
								</a>
							</li>
						</xsl:for-each>
					</ul>
				</xsl:for-each>
			</xsl:for-each>
		</ul>
	</xsl:template>

	<!-- NOEUD INTERVENANT -->
	<xsl:template match="intervenant">
		<div id="{@id}">


			<div class="body">
				<div class="titre">
					<xsl:value-of select="nom" />
				</div>
				<div class="contenu">
					<ul>
						<li>
							Identifiant :
							<xsl:value-of select="identifiant" />
						</li>
						<li>
							lieu d'Etablissement :
							<xsl:value-of select="lieu" />
						</li>
						<li>
							Téléphone :
							<xsl:value-of select="telephone" />
						</li>
						<li>
							Adresse électronique :
							<a href="#">
							<xsl:value-of select="mail" />
							</a>
						</li>
						
					</ul>
				</div>
				<br />
				<center>
					<a href="#" onclick="javascript:history.back();">Revenir a la liste</a>
				</center>
			</div>
		</div>
	</xsl:template>

	<!-- NOEUD ENSEIGNEMENT -->
	<xsl:template match="unite">
		<div id="{@id}">
			<div class="body">
				<div class="titre">
					<xsl:value-of select="nom" />
				</div>
				<div class="contenu">
					<ul>
						<li>
							Identifiant :
							<xsl:value-of select="identifiant" />
						</li>
						<li>
							Nombre de credits
							<xsl:value-of select="nombreCredit" />
						</li>
						<li>
							Resume :
							<xsl:value-of select="resume" />
						</li>
						<xsl:if test="pre-requis">
							<li>
								Prerequis :
								<xsl:value-of select="pre-requis" />
							</li>
						</xsl:if>
						<li>
							Liste de(s) intervenant(s) :
							<ul>
								<xsl:apply-templates select="professeurs/ref-intervenant  " />
							</ul>
						</li>

					</ul>

				</div>
				<br />
				<center>
					<a href="#" onclick="javascript:history.back();">Revenir a la liste</a>
				</center>
			</div>
		</div>
	</xsl:template>


	<!-- Semestre -->
	<xsl:template name="genererSemestre">
		<xsl:param name="id" />
		Programme du S
		<xsl:value-of select="//semestre[@id = $id]/titre" />
		<xsl:for-each select="//semestre[@id = $id]/ref-bloc">
			<xsl:variable name="id" select="@ref" />
			<li>
				<xsl:value-of select="//bloc[$id = @id]/@titre" />
			</li>
			<xsl:for-each select="//bloc[$id = @id]">
				<xsl:for-each select="ref-unite">
					<xsl:variable name="idUE" select="@ref" />
					<xsl:call-template name="afficherNomEnseignement">
						<xsl:with-param name="id">
							<xsl:value-of select="$idUE" />
						</xsl:with-param>
					</xsl:call-template>
				</xsl:for-each>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>

	<!-- Afficher nom enseignement -->

	<xsl:template name="afficherNomEnseignement">
		<xsl:param name="id" />
		<li>
			<a href="../../enseignements/{$id}.html">
				<xsl:value-of select="//unite[@id = $id]/nom" />
				(
				<xsl:value-of select="//unite[@id = $id]/nombreCredit" />
				credits)
			</a>
		</li>
	</xsl:template>

	<!-- PAGE SPECIALITE -->
	<xsl:template match="specialite">
		<xsl:if test="nom != ''">
			<div class="titre">
				Nom
			</div>
			<div class="contenu">
				<xsl:value-of select="nom" />
			</div>
		</xsl:if>
		<xsl:variable name="ref" select="responsable/ref-intervenant/@ref" />
		<div class="titre">
			Responsable
		</div>
		<div class="contenu">
			<a href="../../intervenants/{$ref}.html">
				<xsl:value-of select="//intervenant[@id = $ref]/nom" />
			</a>
		</div>
		<xsl:if test="lieu != ''">
			<div class="titre">
				Lieu d'enseignement</div>
			<div class="contenu">
				<xsl:value-of select="lieu" />
			</div>
		</xsl:if>
		<xsl:if test="description != ''">
			<div class="titre">
				Description
			</div>
			<div class="contenu">
				<xsl:value-of select="description" />
			</div>
		</xsl:if>
		<xsl:if test="competences != ''">
			<div class="titre">
				Competences a acquerir</div>
			<div class="contenu">
				<xsl:value-of select="competences" />
			</div>
		</xsl:if>
		<xsl:if test="connaissances != ''">
			<div class="titre">
				Connaissances a acquerir</div>
			<div class="contenu">
				<xsl:value-of select="connaissances" />
			</div>
		</xsl:if>
		<div class="titre">Programme et enseignements </div>
		<div class="contenu">
			<xsl:for-each select="ref-semestre">
				<xsl:variable name="id" select="@ref" />
				<xsl:call-template name="genererSemestre">
					<xsl:with-param name="id">
						<xsl:value-of select="$id" />
					</xsl:with-param>
				</xsl:call-template>
			</xsl:for-each>
		</div>
		<xsl:if test="politiqueDesStages != ''">
			<div class="titre">
				Politique des stages
			</div>
			<div class="contenu">
				<xsl:value-of select="politiqueDesStages" />
			</div>
		</xsl:if>
		<xsl:if test="aspects != ''">
			<div class="titre">
				Aspects formation et recherche
			</div>
			<div class="contenu">
				<xsl:value-of select="aspects" />
			</div>
		</xsl:if>
		<xsl:if test="modalites != ''">
			<div class="titre">
				Modalite et recherche
			</div>
			<div class="contenu">
				<xsl:value-of select="modalites" />
			</div>
		</xsl:if>
		<xsl:if test="conditionAdmission != ''">
			<div class="titre">
				Condition d'admission et pre-requis
			</div>
			<div class="contenu">
				<xsl:value-of select="conditionAdmission" />
			</div>
		</xsl:if>
		<xsl:if test="debouches != ''">
			<div class="titre">
				Debouches
			</div>
			<div class="contenu">
				<xsl:value-of select="debouches" />
			</div>
		</xsl:if>
		<xsl:if test="poursuitesEtudes != ''">
			<div class="titre">
				Poursuites d'etudes
			</div>
			<div class="contenu">
				<xsl:value-of select="poursuitesEtudes" />
			</div>
		</xsl:if>
		<div class="contenu">
			<xsl:value-of select="autre" />
		</div>
	</xsl:template>

</xsl:stylesheet>
