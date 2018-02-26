<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- NOEUD MASTER -->
	<xsl:template match="master">

		<!-- Description des unités d'enseignement -->
		<xsl:document href="unites.html">
			<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
			<html xmlns="http://www.w3.org/1999/xhtml">
				<head>
					<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
					<link rel="stylesheet" type="text/css" href="css/master.css" />
					<title>
						UEs
					</title>
				</head>
				<body>
					<div class="header">
						<img alt="logo" src="css/img/logo.png"></img>
						<h1>Master Informatique Aix Marseille Université</h1>
					</div>
					<div class="navigation">
						<xsl:call-template name="menu">
							<!-- Nous sommes a la racine -->
							<xsl:with-param name="link" />
						</xsl:call-template>
					</div>
					<center>
						<h1>Liste des UEs du master</h1>
					</center>
					<div class="body">
						<div class="titre">
							<p>Les UEs du master</p>
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
											<a href="enseignements/{@id}.html">
												<xsl:value-of select="@id" />
											</a>
										</td>
										<td>
											<xsl:value-of select="nom" />
										</td>
									</tr>
								</xsl:for-each>
							</table>

						</div>
					</div>
				</body>
			</html>
		</xsl:document>

		<!-- Description des intervenants -->
		<xsl:document href="intervenants.html">
			<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
			<html xmlns="http://www.w3.org/1999/xhtml">
				<head>
					<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
					<link rel="stylesheet" type="text/css" href="css/master.css" />
					<title> Intervenants					</title>
				</head>
				<body>
					<div class="header">
						<img alt="logo" src="css/img/logo.png"></img>
						<h1>Master Informatique Aix Marseille Université</h1>
					</div>
					<div class="navigation">
						<xsl:call-template name="menu">
							<xsl:with-param name="link" />
						</xsl:call-template>
					</div>
					<center>
						<h1>Liste des intervenants de chaque UEs du master</h1>
					</center>
					<div class="body">
						<div class="titre">
							<p>Les intervenants de chaque UEs du master </p>
						</div>
						<div class="contenu">

							<table>
								<tr>
									<td>Nom</td>
									<td>Courriel</td>
								</tr>
								<xsl:for-each select="//intervenant">
									<tr>
										<td>
											<a href="intervenants/{@id}.html">
												<xsl:value-of select="nom" />
											</a>
										</td>
										<td>
											<xsl:value-of select="mail" />
										</td>
									</tr>
								</xsl:for-each>
							</table>
						</div>
					</div>
				</body>
			</html>
		</xsl:document>

		<!-- Generation une page XHTML par UE -->
		<xsl:for-each select="//unite">
			<xsl:document href="enseignements/{@id}.html">
				<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
				<html xmlns="http://www.w3.org/1999/xhtml">
					<head>
						<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
						<title>
							<xsl:value-of select="nom" />
						</title>
					</head>
					<body>
						<div class="header">
							<h1>Master Informatique Aix Marseille Université</h1>
						</div>
						<div class="contenu">
							<ul>
								<li>
									Identifiant :
									<xsl:value-of select="identifiant" />
								</li>
								<li>
									Nombre de credits :
									<xsl:value-of select="nombreCredit" />
								</li>
								<li>
									Resume :
									<xsl:value-of select="resume" />
								</li>
								<li>
									Liste de(s) intervenant(s) :
									<ul>
										<li>
											<xsl:apply-templates select="professeurs/ref-intervenant" />
										</li>
									</ul>
								</li>
							</ul>
						</div>
					</body>
				</html>
			</xsl:document>
		</xsl:for-each>

		<!-- Production une page XHTML par intervenant -->
		<xsl:for-each select="//intervenant">
			<xsl:document href="intervenants/{@id}.html">
				<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
				<html xmlns="http://www.w3.org/1999/xhtml">
					<head>
						<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
						<title>
							<xsl:value-of select="nom" />
						</title>
					</head>
					<body>
						<div class="header">
							<h1>Master Informatique Aix Marseille Université</h1>
						</div>
						<div class="contenu">
							<ul>
								<li>
									Nom de l'intervenant :
									<xsl:value-of select="nom" />
								</li>
								<li>
									Mail de l'intervenant :
									<xsl:value-of select="mail" />
								</li>
							</ul>
						</div>
					</body>
				</html>
			</xsl:document>
		</xsl:for-each>

		<!-- Génération d'une page XHTML par parcour -->
		<xsl:for-each select="//parcour">
			<xsl:document href="parcours/{@id}.html">
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
							<img alt="logo" src="../css/img/logo.png"></img>
							<h1>Master Informatique Aix Marseille Université</h1>
						</div>
						<div class="navigation">
							<xsl:call-template name="menu">
								<xsl:with-param name="link">
									../
								</xsl:with-param>
							</xsl:call-template>
						</div>
						<div class="body">
							<div class="titre">
								<xsl:value-of select="nom" />
							</div>
							<div class="contenu">
								Responsables :
								<xsl:apply-templates select="responsable/ref-intervenant" />
								<p>
									<xsl:value-of select="description" />
								</p>

								<xsl:apply-templates select="ref-semestre" />
								<div class="titre"> Programme des enseignements : </div>
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
								<div class="titre"> Debouches : </div>
								<p>
									<xsl:value-of select="debouches" />
								</p>
								<br />
							</div>
						</div>
					</body>
				</html>
			</xsl:document>
		</xsl:for-each>
		<!-- Squelette de l' index HTML -->
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
		<html>
			<head>
				<link rel="stylesheet" type="text/css" href="css/master.css" />
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
				<title>Master Luminy</title>
			</head>
			<body>
				<div class="header">
					<img src="css/img/logo.png" alt="logo"></img>
					<h1>Master Informatique Aix Marseille Université</h1>
				</div>
				<div class="navigation">
					<xsl:call-template name="menu">
						<xsl:with-param name="link"></xsl:with-param>
					</xsl:call-template>
				</div>
				<div class="body">
					<p>
						Le master « informatique » a pour vocation la formation de
						professionnels de l'informatique au niveau bac+5. L'objectif est
						d'offrir aux etudiants une large palette de competences et de
						savoirs
						afin de rendre accessible des emplois de haut niveau dans le monde de
						la recherche, dans celui de l'entreprise ou dans d'autres
						organisations. Notre ambition est de former des etudiants dont les
						competences sont tout a fait comparables a celles acquises dans
						les
						meilleurs ecoles d'ingenieurs.
					</p>
					<p>
						Le Master informatique repose sur plus de 25 ans d'experience
						d'enseignement d'informatique sur l'Universite d'Aix-Marseille
						(maitrise, DEA et DESS en informatique) et s'est structure lors du
						passage au LMD. Si vous n'etes pas familier des formations
						organisees
						suivant le schema Licence/Master/Doctorat, nous vous conseillons de
						lire cette petite introduction.
					</p>
				</div>
			</body>
		</html>
	</xsl:template>
	<!-- FIN NOEUD MASTER -->

	<!-- NOEUD ref-intervenant -->
	<xsl:template match="ref-intervenant">
		<xsl:variable name="ref" select="@ref" />
		<xsl:for-each select="//intervenant">
			<!-- Test condition sans XPTATH -->
			<xsl:if test="$ref = @id">
				<a href="../intervenants/{$ref}.html">
					<xsl:value-of select="nom" />
				</a>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	<!-- FIN NOEUD ref-intervenant -->

	<!-- Generation du menu -->
	<xsl:template name="menu">
		<xsl:param name="link" />
		<ul>
			<li>
				<strong>PARCOURS</strong>
				<ul>
					<xsl:for-each select="//parcour">
						<li>
							<a href="{$link}parcours/{@id}.html">
								<strong>
									<xsl:value-of select="nom" />
								</strong>
							</a>
						</li>
					</xsl:for-each>
				</ul>
			</li>
			<li>
				<a href="{$link}unites.html">
					<strong>
						Unites
					</strong>
				</a>
			</li>
			<li>
				<a href="{$link}intervenants.html">
					<strong>
						Intervenants
					</strong>
				</a>
			</li>
		</ul>
	</xsl:template>
	<!-- FIN Génération du menu -->
	<!-- Semestre -->
	<xsl:template name="genererSemestre">
		<xsl:param name="id" />
		Programme du S
		<xsl:value-of select="//semestre[@id = $id]/titre" />
		<xsl:for-each select="//semestre[@id = $id]/ref-block">
			<xsl:variable name="id" select="@ref" />
			<li>
				<xsl:value-of select="//block[$id = @id]/@titre" />
			</li>
			<xsl:for-each select="//block[$id = @id]">
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

</xsl:stylesheet>