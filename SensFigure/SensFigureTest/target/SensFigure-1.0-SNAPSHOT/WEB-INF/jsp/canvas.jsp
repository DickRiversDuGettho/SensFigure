<%-- 
    Document   : canvas
    Created on : 8 mars 2016, 22:24:01
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
        <section>
            <label>
                <span>Angle :</span>
                <input id="angleControl" type="range" value="0" min="0" max="360" />
            </label>

            <label>
                <span id="petitLabel">Left :</span>
                <input id="leftControl" type="range" value="0" min="0" max="900" />
            </label>

            <label>
                <span>Top :</span>
                <input id="topControl" type="range" value="0" min="0" max="600" />
            </label>

            <label>
                <span>Forms :</span>
                <input id="formControl" type="range" value="0" min="0" max="100" />
            </label>


            <ul hidden>
                <li>
                    <svg version="1.1"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                         width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                    <circle fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" cx="250.75" cy="250" r="100"/>
                    </svg>
                </li>
                <!-- <li>
                                     <svg version="1.1"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                          width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                         <circle fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" cx="250.75" cy="250" r="100"/>
                                     </svg>
                                 </li>
               
                                 <li>
                                     <svg version="1.1"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                          width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                         <circle fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" cx="250.75" cy="250" r="100"/>
                                     </svg>
                                 </li>
                                 <li>
                                     <svg version="1.1"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                         width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                         <circle fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" cx="249.5" cy="250" r="100"/>
                                         <path fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" d="M349.5,250c0,110.457-89.543,200-200,200"/>
                                     </svg>
                                 </li>
                                 <li> <svg version="1.1" id="Calque_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                      width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                         <circle fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" cx="249.5" cy="300" r="100"/>
                                         <path fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" d="M150,100c0-27.614,22.386-50,50-50s50,22.386,50,50
                                             s22.386,50,50,50s50-22.386,50-50"/>
                                     </svg>
                                 </li>
                                 <li><svg version="1.1" id="Calque_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                          width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                             <circle fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" cx="251" cy="150" r="100"/>
                                             <polygon fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" points="150,300 350,300 250,450 "/>
                                     </svg>
                                 </li>
                                 <li><svg version="1.1" id="Calque_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                          width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                             <circle fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" cx="251" cy="100" r="50"/>
                                             <polygon fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" points="150,200 350,200 250,450 "/>
                                     </svg>
                                  </li>
                                 <li><svg version="1.1" id="Calque_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                      width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                         <polygon fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" points="100,100 250,212.5 400,100 250,400 "/>
                                     </svg>
                                 </li>
                                 <li> <svg version="1.1" id="Calque_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                      width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                         <polygon fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" points="150,300 350,300 250,450 "/>
                                         <polygon fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" points="350,200 150,200 250,50 "/>
                                     </svg>
                                 </li>
                                 <li>
                                     <svg version="1.1" id="Calque_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                      width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                             <line stroke="#000000" stroke-width="6" stroke-miterlimit="10" x1="150.027" y1="150" x2="350.027" y2="150"/>
                                             <line stroke="#000000" stroke-width="6" stroke-miterlimit="10" x1="150.027" y1="250" x2="350.027" y2="250"/>
                                             <line stroke="#000000" stroke-width="6" stroke-miterlimit="10" x1="150.027" y1="350" x2="350.027" y2="350"/>
                                     </svg>
                                 </li>
                                 <li>
                                         <svg version="1.1" id="Calque_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                              width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                                 <polyline fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" points="250.027,350 350.027,150 150.027,150
                                                     250.027,350 "/>
                                                 <line stroke="#000000" stroke-width="6" stroke-miterlimit="10" x1="150.027" y1="250" x2="350.027" y2="250"/>
                                                 <line stroke="#000000" stroke-width="6" stroke-miterlimit="10" x1="150.027" y1="350" x2="350.027" y2="350"/>
                                         </svg>
                                 </li>
                                 <li>
                                             <svg version="1.1" id="Calque_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                                  width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                             <polyline fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" points="150.027,250 150.027,100 300.027,100
                                                 200.027,250 300.027,250 200.027,400 "/>
                                             </svg>
                                 </li>
                                 <li>
                                     <svg version="1.1" id="Calque_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                          width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                             <line fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" x1="250.007" y1="150" x2="250.007" y2="350"/>
                                             <line fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" x1="150.007" y1="250" x2="350.007" y2="250"/>
                                             <line fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" x1="179.298" y1="320.711" x2="320.718" y2="179.29"/>
                                             <line fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" x1="320.718" y1="320.709" x2="179.296" y2="179.289"/>
                                     </svg>
                                 </li>
                                 <li>
                                 <svg version="1.1" id="Calque_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                          width="500.001px" height="500px" viewBox="0 0 500.001 500" enable-background="new 0 0 500.001 500" xml:space="preserve">
                                     <line fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" x1="250.007" y1="50" x2="250.007" y2="200"/>
                                     <line fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" x1="175.007" y1="125" x2="325.007" y2="125"/>
                                     <line fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" x1="196.976" y1="178.034" x2="303.04" y2="71.967"/>
                                     <line fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" x1="303.04" y1="178.032" x2="196.974" y2="71.967"/>
                                     <polygon fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" points="175.009,250 325.007,250 250.005,450 "/>
                                 </svg>
               
                                 </li>
               
               
                                 <li>
                                 <svg version="1.1" id="Calque_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                          width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                     <polygon fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" points="49.973,250 249.973,100 449.973,250
                                         249.973,400 "/>
                                 </svg>
               
               
                                 </li>
               
                                 <li>
                                 <svg version="1.1" id="Calque_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                      width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                 <polyline fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" points="99.975,400 99.975,100 399.975,100
                                     399.975,400 199.975,400 199.975,200 "/>
                                 </svg>
               
                                 </li>
               
                                 <li>
                                 <svg version="1.1" id="Calque_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                      width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                 <path fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" d="M165,100c110.457,0,175,83.293,175,193.75
                                     c0,63.159-29.277,119.597-75,156.25c-45.723-36.652-74.998-93.09-74.999-156.25C190.001,183.293,254.545,100,365,100"/>
                                 </svg>
               
               
                                 </li>
               
                                 <li>
                                 <svg version="1.1" id="Calque_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                      width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                     <path fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" d="M250,43.75c-24.178,16.827-37.5,39.513-37.5,75
                                         c0,31.58,14.638,56.674,37.5,75c22.861-18.326,37.5-43.42,37.5-75C287.5,83.263,274.177,60.577,250,43.75z"/>
                                     <path fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" d="M456.277,250c-16.827-24.178-39.513-37.5-75-37.5
                                         c-31.58,0-56.674,14.638-75,37.5c18.326,22.861,43.42,37.5,75,37.5C416.765,287.5,439.45,274.177,456.277,250z"/>
                                     <path fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" d="M250,456.25c24.178-16.827,37.5-39.513,37.5-75
                                         c0-31.58-14.638-56.674-37.5-75c-22.861,18.326-37.5,43.42-37.5,75C212.5,416.737,225.823,439.423,250,456.25z"/>
                                     <path fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" d="M43.777,250c16.827,24.178,39.513,37.5,75,37.5
                                         c31.58,0,56.674-14.638,75-37.5c-18.326-22.861-43.42-37.5-75-37.5C83.29,212.5,60.604,225.823,43.777,250z"/>
                                     <circle fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" cx="250" cy="250" r="50"/>
                                 </svg>
               
               
                                 </li>
               
                                 <li>
                                 <svg version="1.1" id="Calque_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                          width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                     <polyline fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" points="100.027,300 150.027,200 200.027,300
                                         250.027,200 300.027,300 350.027,200 400.027,300 "/>
                                 </svg>
               
               
                                 </li>
               
                                 <li>
                                 <svg version="1.1" id="Calque_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                      width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                         <path fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" d="M50,350c0-110.457,89.543-200,200-200
                                     s200,89.543,200,200H50z"/>
                                 </svg>
               
               
                                 </li>
               
                                 <li>
               
                                 <svg version="1.1" id="Calque_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                      width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                         <rect x="100.11" y="100" fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" width="300" height="300"/>
                                 </svg>
                                 </li>
               
                                 <li>
                                 <svg version="1.1" id="Calque_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                      width="500px" height="500px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                                     <polyline fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="10" points="200.11,400 100.11,400 100.11,100
                                     400.11,100 400.11,400 300.11,400 "/>
                                 </svg>
               
               
                                 </li> -->



                <li>


                </li>

                <li>


                </li>

                <li>


                </li>

                <li>


                </li>

                <li>


                </li>

                <li>


                </li>

                <li>


                </li>

                <li>


                </li>

                <li>


                </li>

                <li>


                </li>


            </ul>



            <TABLE BORDER>


                <TR>
                    <TD><canvas id="canvas" width="900" height="600"></canvas></TD>
                    <TD><ul id ="ulReception">
                        </ul></TD>

                </TR>

            </TABLE>



        </section>


        <script>


            var groupTableau;
            var tableau = new Array();
            var tableauNewForm = new Array();
            var canvas = new fabric.Canvas('canvas');
            var taille = 40;
            var serializer = new XMLSerializer();
            var i;
            var path0;
            var nbElmntsSVG = document.body.getElementsByTagName('svg').length;
            var position = 0;
            var objetselectionne;

            //construction des formes initiales au chargement de la page.
            for (i = 0; i < nbElmntsSVG; i = i + 1)
            {
                var svgEl0 = document.body.getElementsByTagName('svg')[i];


                var svgStr0 = serializer.serializeToString(svgEl0);
                path0 = fabric.loadSVGFromString(svgStr0, function (objects, options) {
                    var obj = fabric.util.groupSVGElements(objects, options);
                    obj.hasBorders = false;
                    obj.scaleToHeight(taille);
                    obj.scaleToWidth(taille);

                    //obj.set('angle', 45);
                    //obj.animate('angle', '-=5', { onChange: canvas.renderAll.bind(canvas) });

                    obj.animate('left', position, {
                        onChange: canvas.renderAll.bind(canvas),
                        duration: 5000,
                        easing: fabric.util.ease.easeOutElastic
                    });

                    //obj.set('selectable', false); // make object unselectable

                    //.set({ left: canvas.width/2, top: canvas.height/2 })
                    obj.set({left: i * taille, top: 0})
                            .setCoords();

                    obj.hasBorders = false;
                    obj.hasControls = false;
                    tableau[i] = obj;
                    canvas.add(tableau[i]).renderAll();
                    position = position + taille;
                });

            }

            ///////////////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////////////////



            //fond d'écran du canvas
            canvas.setBackgroundImage('img/background.jpg', canvas.renderAll.bind(canvas), {
                backgroundImageOpacity: 0.5,
                backgroundImageStretch: false,
                height: 600,
                width: 900
            });




            var indice = 0;









// greffer sur `canvas.findTarget`, pour declencher "object:over" et "object:out" events
            canvas.findTarget = (function (originalFn) {
                return function () {
                    var target = originalFn.apply(this, arguments);
                    if (target) {
                        if (this._hoveredTarget !== target) {
                            canvas.fire('object:over', {target: target});
                            if (this._hoveredTarget) {
                                canvas.fire('object:out', {target: this._hoveredTarget});
                            }
                            this._hoveredTarget = target;
                        }
                    } else if (this._hoveredTarget) {
                        canvas.fire('object:out', {target: this._hoveredTarget});
                        this._hoveredTarget = null;
                    }
                    return target;
                };
            })(canvas.findTarget);

            // maintenant on peut observer "object:over" and "object:out" events
            //ici, la couleur de l'objet devient rouge quand on est dessus and rien sinon.

            canvas.on('object:over', function (e) {
                e.target.setStroke('red');
                canvas.renderAll();
            });

            canvas.on('object:out', function (e) {
                e.target.setStroke('black');
                canvas.renderAll();
            });

            //evenement quand on selectionne une forme.
            canvas.on({'object:moving': function (e) {
                    var cible = e.target;
                    cible.hasControls = true;
                    var xyt = canvas.getActiveGroup();

                    if (($.inArray(cible, tableauNewForm)) == -1 && xyt == null)
                    { //l'objet n'est pas dans le tableau des nouvellesFormes
                        // on le remet dans la liste du haut

                        var ind = tableau.indexOf(cible);
                        var svgpp = document.body.getElementsByTagName('svg')[ind];

                        var svg1 = serializer.serializeToString(svgpp);
                        var path1 = fabric.loadSVGFromString(svg1, function (objects, e) {

                            var obj = fabric.util.groupSVGElements(objects, e);

                            obj.scaleToHeight(taille);
                            obj.scaleToWidth(taille);
                            obj.hasBorders = false;
                            obj.hasControls = false;
                            //obj.set('angle', 45);
                            //obj.animate('angle', '-=5', { onChange: canvas.renderAll.bind(canvas) });

                            obj.animate('left', cible.getLeft(), {
                                onChange: canvas.renderAll.bind(canvas),
                                duration: 5000,
                                easing: fabric.util.ease.easeOutElastic
                            })

                            //obj.set('selectable', false); // make object unselectable

                            //.set({ left: canvas.width/2, top: canvas.height/2 })
                            obj.set({left: ind * taille, top: 0})
                                    .setCoords();
                            objetselectionne = obj
                            tableau[ind] = obj;

                            canvas.add(tableau[ind]).renderAll();
                            //canvas.getObjects().add(obj);
                        });


                        tableauNewForm[indice] = cible;
                        indice++;



                        //document.getElementById('ulReception').append('<li>'+cible+'</li>');
                        $(document).ready(function () {
                            //$('ul#ulReception').append('<li><input type="button" onClick=setCurrentObject('+indice+') value="Objet '+indice+'" /></li>');
                            $('ul#ulReception').append('<li id="ligne' + indice + '">	<p><input type="button" onClick=setCurrentObject(' + indice + ') value="forme à la position ' + (ind + 1) + '" />   <input type="button" onClick=deleteObjectAndButton(' + indice + ') value="suppr." />             </p></li>');
                        });

                    } else
                    {
                        var ind = tableauNewForm.indexOf(cible);
                        objetselectionne = cible;

                    }
                }

            });
            canvas.on({
                'object:moving': onChange,
                'object:scaling': onChange,
                'object:rotating': onChange,
            });

            //evenement sur les slider de gestion d'une forme.

            //l'angle
            var angleControl = document.getElementById('angleControl');
            angleControl.onchange = function (e) {
                objetselectionne.setAngle(parseInt(this.value, 10)).setCoords();
                canvas.renderAll();
            };


//slider haut-bas
            var topControl = document.getElementById('topControl');
            topControl.onchange = function (e) {
                objetselectionne.setTop(parseInt(this.value, 10)).setCoords();
                canvas.renderAll();
            };
//slider gauche-droite
            var leftControl = document.getElementById('leftControl');
            leftControl.onchange = function (e) {
                objetselectionne.setLeft(parseInt(this.value, 10)).setCoords();
                canvas.renderAll();
            };
            //slider form
            var formControl = document.getElementById('formControl');
            formControl.onchange = function (e) {

                canvas.renderAll();
            };
            //evenement sur le canvas qui met à jour les slider.
            canvas.on('object:selected', function (e) {
                objetselectionne = e.target;
                updateControls(e);


            }
            );


            canvas.on('mouse:move', function (options) {

                var p = canvas.getPointer(options.e);

                canvas.forEachObject(function (obj) {
                    var distX = Math.abs(p.x - obj.left),
                            distY = Math.abs(p.y - obj.top),
                            dist = Math.round(Math.sqrt(Math.pow(distX, 2) + Math.pow(distY, 2)));

                    obj.setOpacity(1 / (dist / 200));
                });

                canvas.renderAll();
            });





            canvas.on({
                'object:moving': updateControls,
                'object:resizing': updateControls,
                'object:rotating': updateControls
            });


            function setCurrentObject(e) {

                objetselectionne = tableauNewForm[e - 1];
                updateCtrls(objetselectionne);

            }
            function deleteObjectAndButton(e) {

                var objselected = tableauNewForm[e - 1];
                canvas.remove(objselected);
                canvas.renderAll();
                var element = document.getElementById("ligne" + e + "");
                element.parentNode.removeChild(element);

            }


            function updateControls(e) {

                angleControl.value = e.target.getAngle();
                leftControl.value = e.target.getLeft();
                topControl.value = e.target.getTop();
            }
            function updateCtrls(obj) {

                angleControl.value = obj.getAngle();
                leftControl.value = obj.getLeft();
                topControl.value = obj.getTop();
            }
            function onChange(options) {
                options.target.setCoords();
                canvas.forEachObject(function (obj) {
                    if (obj === options.target)
                        return;
                    obj.setOpacity(options.target.intersectsWithObject(obj) ? 0.5 : 1);
                });
            }

        </script>

    </body>

</html>
