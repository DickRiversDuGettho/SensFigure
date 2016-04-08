<%-- 
    Document   : index
    Created on : 8 mars 2016, 22:05:23
    Author     : Tewfik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <header><img src="http://imageshack.com/a/img838/6812/6qqa.png
                     " alt="logo" />
        </header>

        <div class="container">
            <div class="sidebar1">
                <h1>Sens figuré est un outil collaboratif qui encourage la manipulation de symboles et la projection de leurs usages. 
                    Une bibliothèque propose un ensemble de formes référencées, sans cesse augmentée des nouvelles formes composées par les utilisateurs.
                    <br>Un système d’archivage et de recherche permet d’accéder directement au sens souhaité. Une nomenclature renseigne sur la provenance du symbole, son 
                    domaine d’utilisation et sa localisation géographique.

                    <br>Sens figuré est le projet de fin d’étude de Fanny Laulaigne, réalisé en collaboration avec Tewfik Messaoudene.</h1>
                <!-- end .sidebar1 -->
            </div>
            <div class="content">
                <h2><img src="http://imageshack.com/a/img842/7923/7zsr.png
                         " alt="logo" /></h2>
                <h2>expérimenter</h2>
                <br></br>
                <h2><img src="http://imageshack.com/a/img841/2475/6nij.png
                         " alt="logo" /></h2>
                <h2>transmettre</h2>
                <!-- end .content --></div>
            <div class="sidebar2">
                <h3>1 — sélectionner une forme dans 
                    la bibliothèque,
                    <br></br>
                    2 — glisser/déposer la forme sur
                    l’espace de dessin,
                    <br></br>
                    3 — ajouter, supprimer, ajuster, orienter, composer avec autant de formes 
                    souhaitées,
                    <br></br>
                    4 — exporter la composition 
                    et remplir les champs nécessaires 
                    à son archivage.</h3>
                <form action="/SensFigure/jouez"> <input type="submit"  value="http://imageshack.com/a/img835/623/z6co.png"/></form>
                <!--     end .sidebar2 <a href="/PaletteAction"><img src="http://imageshack.com/a/img835/623/z6co.png"/></a>-->
            </div>
            <footer></footer>
            <!-- end .container -->
        </div>

    </body>

</html>
