/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.meartist.sensfigure;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Tewfik
 */
    public class PaletteAction extends HttpServlet {
        
    private static String IMG_BASE = "/WEB-INF/img/base";
    private static String ATTRIBUTE_COUNT_IMG_BASE = "count_img_base";
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            setCountImgBase(request);
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head><a href=\"home_01.html\"><img src=\"http://imageshack.com/a/img838/6812/6qqa.png\n" +
"                                            \" alt=\"logo\" /></a>\n" +
"\n" +
"            <div></div>\n" +
"            <nav></nav>");
            out.println("<title>Servlet PaletteAction</title> <script type=\"text/javascript\" src=\"fabric.js-1.4.0/dist/all.js\"></script>\n" +
"          <script type=\"text/javascript\" src=\"http://code.jquery.com/jquery.min.js\"></script>\n" +
"		<link href=\"mainStyle.css\" rel=\"stylesheet\" type=\"text/css\">\n" +
"		<link rel=\"stylesheet\" type=\"text/css\" href=\"css/jquery.svg.css\">\n" +
"		<script type=\"text/javascript\" src=\"js/jquery.svg.js\"></script>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PaletteAction at " + request.getContextPath() + "</h1>");
            out.println("<section>\n" +
"            <label>\n" +
"                <span>Angle :</span>\n" +
"                <input id=\"angleControl\" type=\"range\" value=\"0\" min=\"0\" max=\"360\" />\n" +
"            </label>\n" +
"\n" +
"            <label>\n" +
"                <span id=\"petitLabel\">Left :</span>\n" +
"                <input id=\"leftControl\" type=\"range\" value=\"0\" min=\"0\" max=\"900\" />\n" +
"            </label>\n" +
"\n" +
"            <label>\n" +
"                <span>Top :</span>\n" +
"                <input id=\"topControl\" type=\"range\" value=\"0\" min=\"0\" max=\"600\" />\n" +
"            </label>\n" +
"\n" +
"            <label>\n" +
"                <span>Forms :</span>\n" +
"                <input id=\"formControl\" type=\"range\" value=\"0\" min=\"0\" max=\"100\" />\n" +
"            </label>\n" +
"\n" +
"\n" +
"            <ul hidden>\n" +
"                <li>\n" +
                    //TODO here
                    "\n" +
"                    <svg version=\"1.1\"  xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\"\n" +
"                         width=\"500px\" height=\"500px\" viewBox=\"0 0 500 500\" enable-background=\"new 0 0 500 500\" xml:space=\"preserve\">\n" +
"                    <circle fill=\"none\" stroke=\"#000000\" stroke-width=\"6\" stroke-miterlimit=\"10\" cx=\"250.75\" cy=\"250\" r=\"100\"/>\n" +
"                    </svg>\n" +
"                </li>\n" +
"\n" +
"\n" +
"            </ul>\n" +
"\n" +
"\n" +
"\n" +
"            <TABLE BORDER>\n" +
"\n" +
"\n" +
"                <TR>\n" +
"                    <TD><canvas id=\"canvas\" width=\"900\" height=\"600\"></canvas></TD>\n" +
"                    <TD><ul id =\"ulReception\">\n" +
"                        </ul></TD>\n" +
"\n" +
"                </TR>\n" +
"\n" +
"            </TABLE>\n" +
"\n" +
"\n" +
"\n" +
"        </section>\n" +
"\n" +
"\n" +
"        <script>\n" +
"\n" +
"\n" +
"            var groupTableau;\n" +
"            var tableau = new Array();\n" +
"            var tableauNewForm = new Array();\n" +
"            var canvas = new fabric.Canvas('canvas');\n" +
"            var taille = 40;\n" +
"            var serializer = new XMLSerializer();\n" +
"            var i;\n" +
"            var path0;\n" +
"            var nbElmntsSVG = document.body.getElementsByTagName('svg').length;\n" +
"            var position = 0;\n" +
"            var objetselectionne;\n" +
"\n" +
"            //construction des formes initiales au chargement de la page.\n" +
"            for (i = 0; i < nbElmntsSVG; i = i + 1)\n" +
"            {\n" +
"                var svgEl0 = document.body.getElementsByTagName('svg')[i];\n" +
"\n" +
"\n" +
"                var svgStr0 = serializer.serializeToString(svgEl0);\n" +
"                path0 = fabric.loadSVGFromString(svgStr0, function (objects, options) {\n" +
"                    var obj = fabric.util.groupSVGElements(objects, options);\n" +
"                    obj.hasBorders = false;\n" +
"                    obj.scaleToHeight(taille);\n" +
"                    obj.scaleToWidth(taille);\n" +
"\n" +
"                    //obj.set('angle', 45);\n" +
"                    //obj.animate('angle', '-=5', { onChange: canvas.renderAll.bind(canvas) });\n" +
"\n" +
"                    obj.animate('left', position, {\n" +
"                        onChange: canvas.renderAll.bind(canvas),\n" +
"                        duration: 5000,\n" +
"                        easing: fabric.util.ease.easeOutElastic\n" +
"                    });\n" +
"\n" +
"                    //obj.set('selectable', false); // make object unselectable\n" +
"\n" +
"                    //.set({ left: canvas.width/2, top: canvas.height/2 })\n" +
"                    obj.set({left: i * taille, top: 0})\n" +
"                            .setCoords();\n" +
"\n" +
"                    obj.hasBorders = false;\n" +
"                    obj.hasControls = false;\n" +
"                    tableau[i] = obj;\n" +
"                    canvas.add(tableau[i]).renderAll();\n" +
"                    position = position + taille;\n" +
"                });\n" +
"\n" +
"            }\n" +
"\n" +
"            ///////////////////////////////////////////////////////////////////////////\n" +
"            /////////////////////////////////////////////////////////////////////////////\n" +
"\n" +
"\n" +
"\n" +
"            //fond d'écran du canvas\n" +
"            canvas.setBackgroundImage('img/background.jpg', canvas.renderAll.bind(canvas), {\n" +
"                backgroundImageOpacity: 0.5,\n" +
"                backgroundImageStretch: false,\n" +
"                height: 600,\n" +
"                width: 900\n" +
"            });\n" +
"\n" +
"\n" +
"\n" +
"\n" +
"            var indice = 0;\n" +
"\n" +
"\n" +
"\n" +
"\n" +
"\n" +
"\n" +
"\n" +
"\n" +
"\n" +
"// greffer sur `canvas.findTarget`, pour declencher \"object:over\" et \"object:out\" events\n" +
"            canvas.findTarget = (function (originalFn) {\n" +
"                return function () {\n" +
"                    var target = originalFn.apply(this, arguments);\n" +
"                    if (target) {\n" +
"                        if (this._hoveredTarget !== target) {\n" +
"                            canvas.fire('object:over', {target: target});\n" +
"                            if (this._hoveredTarget) {\n" +
"                                canvas.fire('object:out', {target: this._hoveredTarget});\n" +
"                            }\n" +
"                            this._hoveredTarget = target;\n" +
"                        }\n" +
"                    } else if (this._hoveredTarget) {\n" +
"                        canvas.fire('object:out', {target: this._hoveredTarget});\n" +
"                        this._hoveredTarget = null;\n" +
"                    }\n" +
"                    return target;\n" +
"                };\n" +
"            })(canvas.findTarget);\n" +
"\n" +
"            // maintenant on peut observer \"object:over\" and \"object:out\" events\n" +
"            //ici, la couleur de l'objet devient rouge quand on est dessus and rien sinon.\n" +
"\n" +
"            canvas.on('object:over', function (e) {\n" +
"                e.target.setStroke('red');\n" +
"                canvas.renderAll();\n" +
"            });\n" +
"\n" +
"            canvas.on('object:out', function (e) {\n" +
"                e.target.setStroke('black');\n" +
"                canvas.renderAll();\n" +
"            });\n" +
"\n" +
"            //evenement quand on selectionne une forme.\n" +
"            canvas.on({'object:moving': function (e) {\n" +
"                    var cible = e.target;\n" +
"                    cible.hasControls = true;\n" +
"                    var xyt = canvas.getActiveGroup();\n" +
"\n" +
"                    if (($.inArray(cible, tableauNewForm)) == -1 && xyt == null)\n" +
"                    { //l'objet n'est pas dans le tableau des nouvellesFormes\n" +
"                        // on le remet dans la liste du haut\n" +
"\n" +
"                        var ind = tableau.indexOf(cible);\n" +
"                        var svgpp = document.body.getElementsByTagName('svg')[ind];\n" +
"\n" +
"                        var svg1 = serializer.serializeToString(svgpp);\n" +
"                        var path1 = fabric.loadSVGFromString(svg1, function (objects, e) {\n" +
"\n" +
"                            var obj = fabric.util.groupSVGElements(objects, e);\n" +
"\n" +
"                            obj.scaleToHeight(taille);\n" +
"                            obj.scaleToWidth(taille);\n" +
"                            obj.hasBorders = false;\n" +
"                            obj.hasControls = false;\n" +
"                            //obj.set('angle', 45);\n" +
"                            //obj.animate('angle', '-=5', { onChange: canvas.renderAll.bind(canvas) });\n" +
"\n" +
"                            obj.animate('left', cible.getLeft(), {\n" +
"                                onChange: canvas.renderAll.bind(canvas),\n" +
"                                duration: 5000,\n" +
"                                easing: fabric.util.ease.easeOutElastic\n" +
"                            })\n" +
"\n" +
"                            //obj.set('selectable', false); // make object unselectable\n" +
"\n" +
"                            //.set({ left: canvas.width/2, top: canvas.height/2 })\n" +
"                            obj.set({left: ind * taille, top: 0})\n" +
"                                    .setCoords();\n" +
"                            objetselectionne = obj\n" +
"                            tableau[ind] = obj;\n" +
"\n" +
"                            canvas.add(tableau[ind]).renderAll();\n" +
"                            //canvas.getObjects().add(obj);\n" +
"                        });\n" +
"\n" +
"\n" +
"                        tableauNewForm[indice] = cible;\n" +
"                        indice++;\n" +
"\n" +
"\n" +
"\n" +
"                        //document.getElementById('ulReception').append('<li>'+cible+'</li>');\n" +
"                        $(document).ready(function () {\n" +
"                            //$('ul#ulReception').append('<li><input type=\"button\" onClick=setCurrentObject('+indice+') value=\"Objet '+indice+'\" /></li>');\n" +
"                            $('ul#ulReception').append('<li id=\"ligne' + indice + '\">	<p><input type=\"button\" onClick=setCurrentObject(' + indice + ') value=\"forme à la position ' + (ind + 1) + '\" />   <input type=\"button\" onClick=deleteObjectAndButton(' + indice + ') value=\"suppr.\" />             </p></li>');\n" +
"                        });\n" +
"\n" +
"                    } else\n" +
"                    {\n" +
"                        var ind = tableauNewForm.indexOf(cible);\n" +
"                        objetselectionne = cible;\n" +
"\n" +
"                    }\n" +
"                }\n" +
"\n" +
"            });\n" +
"            canvas.on({\n" +
"                'object:moving': onChange,\n" +
"                'object:scaling': onChange,\n" +
"                'object:rotating': onChange,\n" +
"            });\n" +
"\n" +
"            //evenement sur les slider de gestion d'une forme.\n" +
"\n" +
"            //l'angle\n" +
"            var angleControl = document.getElementById('angleControl');\n" +
"            angleControl.onchange = function (e) {\n" +
"                objetselectionne.setAngle(parseInt(this.value, 10)).setCoords();\n" +
"                canvas.renderAll();\n" +
"            };\n" +
"\n" +
"\n" +
"//slider haut-bas\n" +
"            var topControl = document.getElementById('topControl');\n" +
"            topControl.onchange = function (e) {\n" +
"                objetselectionne.setTop(parseInt(this.value, 10)).setCoords();\n" +
"                canvas.renderAll();\n" +
"            };\n" +
"//slider gauche-droite\n" +
"            var leftControl = document.getElementById('leftControl');\n" +
"            leftControl.onchange = function (e) {\n" +
"                objetselectionne.setLeft(parseInt(this.value, 10)).setCoords();\n" +
"                canvas.renderAll();\n" +
"            };\n" +
"            //slider form\n" +
"            var formControl = document.getElementById('formControl');\n" +
"            formControl.onchange = function (e) {\n" +
"\n" +
"                canvas.renderAll();\n" +
"            };\n" +
"            //evenement sur le canvas qui met à jour les slider.\n" +
"            canvas.on('object:selected', function (e) {\n" +
"                objetselectionne = e.target;\n" +
"                updateControls(e);\n" +
"\n" +
"\n" +
"            }\n" +
"            );\n" +
"\n" +
"\n" +
"            canvas.on('mouse:move', function (options) {\n" +
"\n" +
"                var p = canvas.getPointer(options.e);\n" +
"\n" +
"                canvas.forEachObject(function (obj) {\n" +
"                    var distX = Math.abs(p.x - obj.left),\n" +
"                            distY = Math.abs(p.y - obj.top),\n" +
"                            dist = Math.round(Math.sqrt(Math.pow(distX, 2) + Math.pow(distY, 2)));\n" +
"\n" +
"                    obj.setOpacity(1 / (dist / 200));\n" +
"                });\n" +
"\n" +
"                canvas.renderAll();\n" +
"            });\n" +
"\n" +
"\n" +
"\n" +
"\n" +
"\n" +
"            canvas.on({\n" +
"                'object:moving': updateControls,\n" +
"                'object:resizing': updateControls,\n" +
"                'object:rotating': updateControls\n" +
"            });\n" +
"\n" +
"\n" +
"            function setCurrentObject(e) {\n" +
"\n" +
"                objetselectionne = tableauNewForm[e - 1];\n" +
"                updateCtrls(objetselectionne);\n" +
"\n" +
"            }\n" +
"            function deleteObjectAndButton(e) {\n" +
"\n" +
"                var objselected = tableauNewForm[e - 1];\n" +
"                canvas.remove(objselected);\n" +
"                canvas.renderAll();\n" +
"                var element = document.getElementById(\"ligne\" + e + \"\");\n" +
"                element.parentNode.removeChild(element);\n" +
"\n" +
"            }\n" +
"\n" +
"\n" +
"            function updateControls(e) {\n" +
"\n" +
"                angleControl.value = e.target.getAngle();\n" +
"                leftControl.value = e.target.getLeft();\n" +
"                topControl.value = e.target.getTop();\n" +
"            }\n" +
"            function updateCtrls(obj) {\n" +
"\n" +
"                angleControl.value = obj.getAngle();\n" +
"                leftControl.value = obj.getLeft();\n" +
"                topControl.value = obj.getTop();\n" +
"            }\n" +
"            function onChange(options) {\n" +
"                options.target.setCoords();\n" +
"                canvas.forEachObject(function (obj) {\n" +
"                    if (obj === options.target)\n" +
"                        return;\n" +
"                    obj.setOpacity(options.target.intersectsWithObject(obj) ? 0.5 : 1);\n" +
"                });\n" +
"            }\n" +
"\n" +
"        </script>\n" +
"</body>");
            out.println("</html>");
        }
    }

    private void setCountImgBase(HttpServletRequest request) {
        /* TODO output your page here. You may use following sample code. */
        //get number of file in /img/base/
        //InputStream filesInputStream = getServletContext().getResourceAsStream(IMG_BASE);
        String fullPath = getServletContext().getRealPath(IMG_BASE);
        File dir = new File(fullPath);
        int count = 0;
        if (dir != null && dir.isDirectory() & dir.listFiles() != null) {
            count = dir.listFiles().length;
        }
        request.setAttribute(ATTRIBUTE_COUNT_IMG_BASE, count);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
