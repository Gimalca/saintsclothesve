<div class="footer-container">

    <div class="footer">

        <div class="container">

            <div class="col-md-12 row">

                <div class="col-md-2" id="posicion-footer">

                    <ul>
                        <li id="footer-titulo" class="tamaño">COMPAÑIA</li>

                        <ul>
                            <li id="tamaño"><a href="<?php echo $informations[7]['href']; ?>"><?php echo $informations[7]['title']; ?></a></li>
                            <li id="tamaño"><a href="<?php echo $informations[8]['href']; ?>"><?php echo $informations[8]['title']; ?></a></li>
                            <li id="tamaño"><a href="<?php echo $informations[5]['href']; ?>"><?php echo $informations[5]['title']; ?></a></li>
                        </ul>
                    </ul>
                </div>
                <div class="col-md-3" id="posicion-footer">
                    <ul>
                        <li id="footer-titulo" class="tamaño">ATENCION AL CLIENTE </li>
                        <ul>
                            <li id="tamaño"><a href="<?php echo $informations[0]['href']; ?>"><?php echo $informations[0]['title']; ?></a></li>
                             <li id="tamaño"><a href="<?php echo $informations[1]['href']; ?>"><?php echo $informations[1]['title']; ?></a></li>
                             <li id="tamaño"><a href="<?php echo $informations[2]['href']; ?>"><?php echo $informations[2]['title']; ?></a></li>
                             <li id="tamaño"><a href="<?php echo $informations[3]['href']; ?>"><?php echo $informations[3]['title']; ?></a></li>
                        </ul>

                    </ul>

                </div>

                <div class="col-md-2" id="posicion-footer">

                    <ul>

                        <li id="footer-titulo" class="tamaño">INFORMACION</li>

                        <ul>

                            <li id="tamaño"><a href="<?php echo $informations[4]['href']; ?>"><?php echo $informations[4]['title']; ?></a></li>

                            <li id="tamaño"><a href="<?php echo $informations[9]['href']; ?>"><?php echo 'Tabla de Tallas'; ?></a></li>

                            <li id="tamaño"><a href="http://saintsclothes.com.ve/index.php?route=information/contact">Contactanos</a></li>


                        </ul>

                    </ul>

                </div>

                <div class="col-md-5" style="margin-top: 50px;">

                    <div id="newsletter-footer">  

                        <form name="subscribe" id="subscribe">

                            <div id="footer-titulo" class="col-md-12" style="margin-bottom: 11px;">

                                Newsletter

                                y promociones especiales

                            </div>



                            <div class="input-box col-md-7" >



                                <input type="text" value="" name="subscribe_email" id="subscribe_email" class="input-text required-entry validate-email" placeholder="Email" />

                                <input type="hidden" value="-" name="subscribe_name" id="subscribe_name">

                                <div id="subscribe_result"></div>

                            </div>

                            <button id="boton-footer"  onclick="email_subscribe()" type="button" title="Suscribete" class="button"><span><span style="color: white;font-size: 12px;">Suscribete</span></span></button>

                            <!--div class="social-icons col-md-12 col-xs-offset-1">

                            <div class="form-subscribe-header" id="newsletter-footer">

                                Síguenos

                            </div>

                            <div class="col-md-12"  style="margin-left: 0px; padding-left: 0px;">

                                <a class="facebook-icon" href="http://www.facebook.com/">Facebook</a>

                                <a class="twitter-icon" title="Twitter" href="http://www.twitter.com/">Twitter</a>

                                <a class="instragram-icon" title="Instragram" href="www.instragram.com/">Instragram</a>

                                <a class="pinterest-icon" title="Pinterest" href="www.pinterest.com/">Flickr</a>

                                <a class="google-icon" title="google" href="www.google.com/">google</a>

                              </div>

                            </div-->

                        </form>

                    </div>

                 



                   

                </div>

            </div>

           

            <script language="javascript">

		

            function news_subscribe(){

                    $.ajax({

                       

                                    type: 'post',

                                    url: 'index.php?route=module/newslettersubscribe/subscribe',

                                    dataType: 'html',

                        data:$("#news_subscribe").serialize(),

                                    success: function (html) {

                                            eval(html);

                                    }}); 

            }

            function email_subscribe(){

                    $.ajax({

                                    type: 'post',

                                    url: 'index.php?route=module/newslettersubscribe/subscribe',

                                    dataType: 'html',

                        data:$("#subscribe").serialize(),

                                    success: function (html) {

                                            eval(html);

                                    }}); 

            }

            function email_unsubscribe(){

                    $.ajax({

                                    type: 'post',

                                    url: 'index.php?route=module/newslettersubscribe/unsubscribe',

                                    dataType: 'html',

                        data:$("#subscribe").serialize(),

                                    success: function (html) {

                                            eval(html);

                                    }}); 

            }

      

            $('.fancybox_sub').fancybox({

                    width: 180,

                    height: 180,

                    autoDimensions: false

            });

            </script>

      

                    

                    

                

            </div>

            <div class="col-md-12 footer-pay">

                <img class="img-responsive" src="image/data/pay_method.png" alt="Instagram">

            </div>

            </div>

            

            

            <script type="text/javascript">

                //<![CDATA[

                if (jQuery(".footer-middle").children('div').length > 0) {

                    jQuery(".footer-middle").children('div').addClass('col-sm-' + (12 / jQuery(".footer-middle").children('div').length));

                }

                //]]

            </script>

            <div style=" color: #666; padding: 5px; font-size: 9px; text-transform: uppercase ">© 2015 Saint. All Rights reserved.  Desarrolaldo por <a style="color: #777" target="_blank" href="http://gimalca.com">Gimalca.</a></div>

        </div>

<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/talla/css/stylesheet.css" />



       

<div class="modal fade modal-lg talla_box" id="myModal" role="dialog">

    <div class="modal-dialog moda">

        <!-- Modal content-->

        <div class="modal-content">

            <div class="modal-header">

                <button type="button" class="close" data-dismiss="modal">&times;</button>

              <h2 class="text-uppercase h3 pulldown-10">Guía de Tallas • Saints Clothes</h2>

                        

            </div>

            <div class="modal-body">

                <h2 class="text-uppercase h5-arial text-gray" style=" text-transform: uppercase; ">Unidad de medida en centímetros</h2>

                <div class="container text-center">

                  

                    <table class="table pushdown-50">

                        <thead class="text-uppercase">

                            <tr>

                                <th>Saints</th>

                                <th>eur</th>

                                <th>busto</th>

                                <th>cadera</th>

                                <th>cintura</th>

                            </tr>

                        </thead>

                        <tbody>

                            <tr>

                                <td class="text-uppercase">s</td>

                                <td>36</td>

                                <td>86-89</td>

                                <td>93-95</td>

                                <td>66-69</td>

                            </tr>

                            <tr>

                                <td class="text-uppercase">m</td>

                                <td>38</td>

                                <td>91-94</td>

                                <td>98-101</td>

                                <td>71-76</td>

                            </tr>

                            <tr>

                                <td class="text-uppercase">l</td>

                                <td>40</td>

                                <td>99-101</td>

                                <td>105-108</td>

                                <td>79-81</td>

                            </tr>

                            <tr>

                                <td class="text-uppercase">xl</td>

                                <td>42</td>

                                <td>105-108</td>

                                <td>111-113</td>

                                <td>85-87</td>

                            </tr>

                        </tbody>

                    </table>

                    <table class="table pushdown-50">

                        <thead class="text-uppercase">

                            <tr>

                                <th>Saints</th>

                                <th>us</th>

                                <th>busto</th>

                                <th>cadera</th>

                                <th>cintura</th>

                            </tr>

                        </thead>

                        <tbody>

                            <tr>

                                <td class="text-uppercase">xs</td>

                                <td>0-1</td>

                                <td>78-82</td>

                                <td>83-87</td>

                                <td>58-61</td>

                            </tr>

                            <tr>

                                <td class="text-uppercase">s</td>

                                <td>3-5</td>

                                <td>83-88</td>

                                <td>88-92</td>

                                <td>63-67</td>

                            </tr>

                            <tr>

                                <td class="text-uppercase">m</td>

                                <td>7</td>

                                <td>88-89</td>

                                <td>93-94</td>

                                <td>68-69</td>

                            </tr>

                            <tr>

                                <td class="text-uppercase">l</td>

                                <td>9-11</td>

                                <td>91-96</td>

                                <td>96-101</td>

                                <td>74-75</td>

                            </tr>

                            <tr>

                                <td class="text-uppercase">xl</td>

                                <td>13</td>

                                <td>99-100</td>

                                <td>104-105</td>

                                <td>78-79</td>

                            </tr>

                        </tbody>

                    </table>

                    <div class="row">

                        <div class="col-sm-7">

                            <div class="pushdown-50">

                                <header>

                                    <h5 class="h4 text-uppercase pushdown-10">¿Sabes cómo medirte?</h5>

                                </header>

                                <figure><img src="catalog/view/theme/vigo/talla/img/model.jpg" class="img-responsive-70 pushdown-30">

                                </figure>

                                <div class="row">

                                    <div class="text-left explicacion">

                                        <span class="descriptive">BUSTO:</span> Toma la medida alrededor de tu pecho, justo a la altura de los pezones.

                                        <br>

                                        <span class="descriptive">CINTURA:</span> Pasa la cinta métrica por la zona más estrecha de tu cintura, por encima del ombligo y por debajo de las costillas.

                                        <br>

                                        <span class="descriptive">CADERA:</span>La medida debe ser tomada pasando por la zona más voluminosa de tus caderas.</div>

                                </div>

                            </div>

                        </div>

                        <div class="col-sm-5">

                            <div class="container-box">

                                <header>

                                    <h5 class="text-uppercase h4 pushdown-20">símbolos de lavado</h5>

                                </header>

                                <ul class="list-unstyled">

                                    <li>

                                        <span class="inline-block pushright-10"><img src="catalog/view/theme/vigo/talla/svg/wh-washing-hand.svg" class="icon"></span>lavado a mano

                                    </li>

                                    <li>

                                        <span class="inline-block pushright-10"><img src="catalog/view/theme/vigo/talla/svg/wh-washing.svg" class="icon"></span>Utilice lavadora normalmente

                                    </li>

                                    <li>

                                        <span class="inline-block pushright-10"><img src="catalog/view/theme/vigo/talla/svg/wh-washing-30deg-alt.svg" class="icon"></span>Utilice lavadora a menos de 30ºC

                                    </li>

                                    <li>

                                        <span class="inline-block pushright-10"><img src="catalog/view/theme/vigo/talla/svg/wh-washing-40deg-alt.svg" class="icon"></span>Utilice lavadora a menos de 40ºC

                                    </li>



                                    <li>

                                        <span class="inline-block pushright-10"><img src="catalog/view/theme/vigo/talla/svg/wh-washing-not-allowed.svg" class="icon"></span>No lavar

                                    </li>



                                    <li>

                                        <span class="inline-block pushright-10"><img src="catalog/view/theme/vigo/talla/svg/wh-bleaching-not-allowed.svg" class="icon"></span>No utilice cloro

                                    </li>

                                    <li>

                                        <span class="inline-block pushright-10"><img src="catalog/view/theme/vigo/talla/svg/wh-drying-tumble.svg" class="icon"></span>Utilice secadora normalmente

                                    </li>

                                    <li>

                                        <span class="inline-block pushright-10"><img src="catalog/view/theme/vigo/talla/svg/wh-drying-tumble-low-heat.svg" class="icon"></span>Utilice secadora a temperatura baja

                                    </li>

                                    <li>

                                        <span class="inline-block pushright-10"><img src="catalog/view/theme/vigo/talla/svg/wh-drying-tumble-no-heat.svg" class="icon"></span>Utilice secadora en función "solo aire"

                                    </li>

                                    <li>

                                        <span class="inline-block pushright-10"><img src="catalog/view/theme/vigo/talla/svg/wh-drying-not-allowed.svg" class="icon"></span>No utilice secadora

                                    </li>

                                    <li>

                                        <span class="inline-block pushright-10"><img src="catalog/view/theme/vigo/talla/svg/wh-drying-line-dry.svg" class="icon"></span>Secado al sol

                                    </li>

                                    <li>

                                        <span class="inline-block pushright-10"><img src="catalog/view/theme/vigo/talla/svg/wh-iron.svg" class="icon"></span>Utilice plancha si considera necesario

                                    </li>

                                    <li>

                                        <span class="inline-block pushright-10"><img src="catalog/view/theme/vigo/talla/svg/wh-iron-low.svg" class="icon"></span>Utilice plancha a temperatura baja

                                    </li>

                                    <li>

                                        <span class="inline-block pushright-10"><img src="catalog/view/theme/vigo/talla/svg/wh-iron-medium.svg" class="icon"></span>Utilice plancha a temperatura media

                                    </li>

                                    <li>

                                        <span class="inline-block pushright-10"><img src="catalog/view/theme/vigo/talla/svg/wh-iron-high.svg" class="icon"></span>Utilice plancha a temperatura alta

                                    </li>

                                    <li>

                                        <span class="inline-block pushright-10"><img src="catalog/view/theme/vigo/talla/svg/wh-iron-steam-not-allowed.svg" class="icon"></span>Utilice plancha sin vapor

                                    </li>

                                    <li>

                                        <span class="inline-block pushright-10"><img src="catalog/view/theme/vigo/talla/svg/wh-iron-not-allowed.svg" class="icon"></span>No planchar

                                    </li>

                                </ul>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

            <div class="modal-footer">

                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

            </div>

        </div>



    </div>

</div>



<!-- NEWSLETTER -->



<style type="text/css">



  #newsletter_modal .modal-content {

	  background:#fff url(newsletter/img/bg_news.jpg) 98% 98% no-repeat;

	  height: 467px;

	  max-width: 700px

  }

  

  #newsletter_modal #form-news{

	  float:right;

	  margin-top:242px;

  }

</style>

<div class="modal fade modal-lg" id="newsletter_modal" role="dialog">

    <div class="modal-dialog moda" style="max-width:720px">

        <!-- Modal content-->

        <div class="modal-content">

            <div class="modal-header" style="border:none">

                <button type="button" class="close" data-dismiss="modal">&times;</button>

              

                        

            </div>

               <div class="modal-body">

                  <div id="form-news" class="col-md-4">

               		<div class="block block-login-info">

                            <form action="" name="suscribe" id="news_subscribe" >

                                <div class="block-content">

                                    <ul class="form-list">

                                        <li class="fields">

                                            <div class="field name-firstname">

                                                <div class="input-box ">

                                                    <input type="text" id="input-emailn" name="subscribe_name" value="" class="input-text required-entry" placeholder="Nombre: *">

                                                </div>

                                            </div>

                                            <div class="field">

                                                <div class="input-box input-email">

                                                    <input type="email" id="input-emailn" name="subscribe_email" value="" class="input-text required-entry" placeholder="email *">

                                                </div>

                                            </div>

                                        </li>                

                                    </ul>

                                    <button class="button" title="Save" type="button" onclick="javascript:news_subscribe()" value="Continuar"><span><span>¡PARTICIPAR!</span></span></button>

                                    <br/>

                                    <h3 id="subscribe_result" style="padding-top:5px; font-size:14px; color: green"></h3>

                                </div>

                            </form>

                </div>

                </div>

                </div>

            </div>

           

        </div>



</div>



<!-- END NEWSLETTER -->



</div>

<div class="modal fade" id="agree_modal" role="dialog">

    <div class="modal-dialog">

    

      <!-- Modal content-->

      <div class="modal-content">

        <div class="modal-header">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h3>Términos y Condiciones Generales</h3>

        </div>

          <div class="modal-body" style=" text-align: justify">



              <p><span style="line-height: 1.6em;">CUALQUIER PERSONA QUE NO ACEPTE ESTOS TÉRMINOS Y CONDICIONES GENERALES, LOS CUALES TIENEN UN CARÁCTER OBLIGATORIO Y VINCULANTE, DEBERÁ ABSTENERSE DE UTILIZAR EL SITIO Y/O LOS SERVICIOS.</span></p>



              <p>Los siguientes “términos y condiciones generales” regularán expresamente las relaciones que se establezcan entre THE MARQUES IMPORT, CA y su sitio web www.saintsclothes.com.ve (“Saintsclothes” o el “sitio”) de la sección de VENEZUELA. Cualquier persona que desee acceder y/o usar el sitio o los servicios podrá hacerlo sujetándose a los términos y condiciones generales, junto con todas las demás políticas y principios que rigen SAINTSCLOTHES son incorporados al presente por referencia.</p>



              <p>Al aceptar los Términos y Condiciones, el “usuario” o “comprador” declara haber leído, entendido y aceptado todas las condiciones&nbsp; establecidas en los Términos y Condiciones Generales y en las Políticas de Privacidad, así como en los demás documentos incorporados a los mismos por referencia. Por ello, se entiende que el “comprador”, “usuario” o “cliente” al utilizar “Los Servicios” se ha leído, entendido y aceptado todas las condiciones y términos del contrato.</p>



              <p>Para poder adquirir productos, el usuario podrá realizar el pedido rellenando los campos obligatorios, obteniendo así, la condición de “cliente”, dicha condición de cliente, supone la adhesión a los términos y condiciones generales en la versión publicada en el momento que acceda al sitio web.</p>



              <p>Saintsclothes se reserva el derecho de modificar los Términos y Condiciones Generales en cualquier momento. De realizarse cambios, el nuevo contrato será publicado en la página web con cinco (5) días de anticipación al inicio de su vigencia con fines de notificar a los usuarios. Si el usuario deseara retractarse, cancelar su inscripción o no aceptara las modificaciones propuestas, deberá comunicarlo por correo electrónico. En tales casos, siempre que no tenga deudas pendientes, quedará disuelto el vínculo contractual y se cancelará su inscripción.</p>



              <p>&nbsp;</p>



              <p>1-INFORMACIÓN GENERAL</p>



              <p>Se exponen los siguientes datos identificativos del titular de esta página web:</p>



              <p>THE MARQUES IMPORT, CA</p>



              <p>J-40216923-0</p>



              <p>Salvador de León a Coliseo Edif. Almacenes del centro PH Caracas, Venezuela</p>



              <p>Sitio web: www.saintsclothes.com.ve</p>



              <p>&nbsp;</p>



              <p>2-OBJETO  </p>



              <p>La presente Web ha sido diseñada para dar a conocer los productos y/o servicios ofertados por Saintsclothes<strong>,</strong> consistentes en la puesta a disposición de un servicio de compra online de artículos de moda y complementos. Asimismo, también se puede encontrar información sobre las últimas tendencias de la industria de la moda, novedades y recomendaciones.</p>



              <p>&nbsp;</p>



              <p>3-RESPONSABILIDADES DEL USUARIO</p>



              <p>El Usuario es completamente responsable del acceso y correcto uso del Sitio Web con sujeción a la legalidad vigente, sea nacional o internacional, así como a los principios de buena fe, a la moral, buenas costumbres y orden público. Y específicamente, adquiere el compromiso de observar diligentemente las presentes condiciones de uso.</p>



              <p>Los Usuarios se abstendrán de usar los servicios y contenidos del sitio con fines o efectos ilícitos y que sean lesivos de los derechos e intereses de terceros, o que de cualquier forma puedan dañar, inutilizar, afectar o deteriorar la Web, sus contenidos y sus servicios. Asimismo, queda prohibido impedir la normal utilización o disfrute de la Web a otros Usuarios.</p>



              <p>Saintsclothes no se hace responsable del uso que terceros puedan hacer de los datos facilitados a través de la presente página web. Quienes incumplan tales obligaciones responderán de cualesquier perjuicio o daño que ocasionen. Saintsclothes no responderá de ninguna consecuencia, daño o perjuicio que pudieran derivarse de dicho acceso o uso ilícito por parte de terceros.</p>



              <p><span style="line-height: 1.6em;">Saintsclothes no se hará responsable de la veracidad de los datos facilitados por los usuarios de la web, no siendo responsable en ningún caso pues de la falta de veracidad en datos como direcciones, teléfonos, correos electrónicos o nombres publicados en la web por usuarios de la misma.</span></p>



              <p>En general, el Usuario se compromete, a:</p>



              <p>-No utilizar el Sitio Web para fines ilegales o no autorizados.</p>



              <p>-No alterar o modificar, total o parcialmente el Sitio Web, eludiendo, desactivando o manipulando de cualquier otra forma las funciones o servicios del Sitio Web.</p>



              <p>-No infringir los derechos de propiedad intelectual o las normas reguladoras de la protección de datos de carácter personal.</p>



              <p>-No usar la Web para injuriar, difamar, intimidar, violar la propia imagen o acosar a otros Usuarios.</p>



              <p>-No publicar en el Sitio Web ningún comentario o información que sea ilegal, racista, xenófoba, obscena, pornográfica, abusiva, difamatoria, engañosa, fraudulenta o de cualquier forma contraria a la moral o al orden público.</p>



              <p>-No acceder a las cuentas de correo electrónico de otros usuarios.</p>



              <p>-No remitir correos electrónicos con carácter masivo y/o repetitivo a una pluralidad de personas, ni mandar direcciones de correo electrónico de terceros sin su consentimiento.</p>



              <p>-Proporcionar información verídica de los datos personales al momento de registrarse o realizar una compra.</p>



              <p>Sin perjuicio de lo anterior, Saintsclothes se reserva el derecho a denegar en cualquier momento y sin necesidad de aviso previo, el acceso al Sitio Web a aquellos usuarios que incumplan las presentes Condiciones Generales.</p>



              <p>&nbsp;</p>



              <p>4-RESPONSABILIDAD DE SAINTSCLOTHES</p>



              <p>El Usuario es responsable de contar con los servicios y equipos necesarios para la navegación por Internet y para acceder al Sitio Web de Saintsclothes. En caso de cualquier incidencia o dificultad para acceder a www.saintsclothes.com.ve el Usuario puede informarlo a Saintsclothes al correo electrónico info@saintsclothes.com.ve, que procederá a analizar la incidencia y dará indicaciones al Usuario acerca de cómo resolverla en el plazo más breve posible.</p>



              <p>Saintsclothes no responderá en caso de interrupciones del servicio, errores de conexión, falta de disponibilidad o deficiencias en el servicio de acceso a Internet, ni por interrupciones de la red de Internet o por cualquier otra razón ajena al control de Saintsclothes.</p>



              <p>Asimismo, Saintsclothes no responderá de los actos u omisiones de terceros, con independencia de que estos terceros pudiesen estar vinculados a Saintsclothes mediante vía contractual.</p>



              <p>&nbsp;</p>



              <p>5-PROPIEDAD INTELECTUAL E INDUSTRIAL</p>



              <p>Saintsclothes es la titular de todos los derechos de propiedad intelectual de la página www.saintsclothes.com.ve así como de su código fuente, diseño, estructuras de navegación y los distintos elementos en ellas contenidos en la misma. Corresponden también a Saintsclothes el ejercicio exclusivo de los derechos de explotación de los mismos en cualquier forma y, en especial, los derechos de reproducción, distribución, comunicación pública y transformación.</p>



              <p>La presente web www.saintsclothes.com.ve, las páginas que comprende y la información o elementos contenidos en las mismas, incluye textos, documentos, fotografías, dibujos, representaciones gráficas, programas informáticos, así como logotipos, marcas, nombres comerciales, u otros signos distintivos, protegidos por derechos de propiedad intelectual.</p>



              <p>La autorización al Usuario para el acceso a la web no supone renuncia, transmisión, licencia o cesión total ni parcial sobre derechos de propiedad intelectual o industrial por parte de Saintsclothes.</p>



              <p>&nbsp;</p>



              <p>6-GARANTÍAS Y RESPONSIBILIDAD</p>



              <p>Saintsclothes no otorga ninguna garantía ni se hace responsable en ningún caso, de los daños y perjuicios de cualquier naturaleza que pudieran traer a causa de:</p>



              <p>-La falta de disponibilidad, mantenimiento y efectivo funcionamiento del Sitio Web y/o de sus servicios o contenidos.</p>



              <p>-La falta de utilidad, adecuación o validez del Sitio Web y/o de sus servicios o contenidos para satisfacer necesidades, actividades o resultados concretos o expectativas de los usuarios.</p>



              <p>-La existencia de virus, programas maliciosos o lesivos en los contenidos.</p>



              <p>-El uso ilícito, negligente, fraudulento, contrario a las presentes Condiciones de Uso, a la buena fe, a los usos generalmente aceptados o al orden público, del Sitio Web, sus servicios o contenidos, por parte del usuario.</p>



              <p>-El incumplimiento por parte de terceros de sus obligaciones o compromisos en relación con los servicios prestados a los usuarios a través del Sitio Web.</p>



              <p>&nbsp;</p>



              <p>7-POLÍTICA DE ENLACES</p>



              <p>Las personas o entidades que pretendan realizar o realicen un hiperenlace desde una página web de otro portal de Internet a cualquiera de las páginas web de Saintsclothes deberán someterse a las siguientes condiciones:</p>



              <p>-No se permite la reproducción total o parcial de ninguno de los servicios ni contenidos del Sitio Web sin la previa autorización expresa de Saintsclothes<strong>.</strong></p>



              <p>-No se establecerán deep-links, ni enlaces IMG o de imagen, ni frames con las páginas de Saintsclothes sin la previa autorización expresa de Saintsclothes.</p>



              <p>-No se incluirá ninguna manifestación falsa, inexacta o incorrecta sobre las páginas de Saintsclothes, ni sobre los servicios o contenidos del mismo. Salvo aquellos signos que formen parte del hipervínculo, la página web en la que se establezca no contendrá ninguna marca, nombre comercial, rótulo de establecimiento, denominación, logotipo, eslogan u otros signos distintivos pertenecientes a Saintsclothes, salvo autorización expresa de éste.</p>



              <p>-El establecimiento del hipervínculo no implicará la existencia de relaciones entre Saintsclothes y el titular de la página web o del portal desde el cual se realice, ni el conocimiento y aceptación de Saintsclothes de los servicios y contenidos ofrecidos en dicha página web o portal.</p>



              <p>- Saintsclothes no será responsable de los contenidos o servicios puestos a disposición del público en la página web o portal desde el cual se realice el hipervínculo, ni de las informaciones y manifestaciones incluidas en los mismos.</p>



              <p>&nbsp;</p>



              <p>8-ENLACES</p>



              <p>Saintsclothes no asume responsabilidad alguna derivada de los contenidos enlazados (Links) que posibiliten, a través del Sitio Web, el acceso al Usuario a prestaciones y servicios ofrecidos por terceros, siempre que sean ajenos a la misma. Por tanto, Saintsclothes no se hace responsable ni de la información contenida en los mismos ni de cualesquiera efectos que pudieran derivarse de dicha información. Si cualquier Usuario o tercero observara que tales enlaces puedan ser contrarios a las leyes, la moral o el orden público, deberá ponerlo en nuestro conocimiento a través del correo electrónico info@saintsclothes.com.ve</p>



              <p>&nbsp;</p>



              <p>9-FACTURACIÓN</p>



              <p>El cliente tiene la posibilidad de abonar el importe de sus pedidos, con Tarjeta de Crédito a través de MercadoPago o con depósitos y/o transferencias bancarias.</p>



              <p>El cliente deberá suministrar sus datos personales y dirección de residencia con la finalidad de emitir una factura fiscal por la compra efectuada, cumpliendo así con los requisitos exigidos por el SENIAT.</p>



              <p>En caso de haberse facturado cargos que no hubiesen correspondido, el Usuario deberá calificar o modificar su calificación indicando que la operación no fue concretada, o deberá comunicarse con nuestro equipo de Atención al Cliente para resolver dicha cuestión (info@saintsclothes.com.ve)</p>



              <p>&nbsp;</p>



              <p><span style="line-height: 1.6em;">10-JURISDICCIÓN Y LEY APLICABLE</span></p>



              <p>Este acuerdo estará regido en todos sus puntos por las leyes vigentes en la República Bolivariana de Venezuela.</p>



              <p>Cualquier controversia derivada del presente acuerdo, su existencia, validez, interpretación, alcance o cumplimiento, será sometida a las leyes aplicables y a los Tribunales competentes de la República Bolivariana de Venezuela y los procedimientos se llevarán a cabo en idioma castellano.</p>



          </div>

        <div class="modal-footer">

          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

        </div>

      </div>

      

    </div>

  </div>

    </div>

</div>



<?php if ( $category_s == "home"  ):?>



<script type="text/javascript">//<![CDATA[

    jQuery(document).ready(function () {

		

		jQuery('body').addClass('modal-open');

		jQuery('#newsletter_modal').addClass('in');

		jQuery('#newsletter_modal').css('display', 'block');

		$('body').prepend('<div class="modal-backdrop fade in"></div>');

		

		

		 jQuery("#newsletter_modal button.close").click(function(e){

			$('body').removeClass('modal-open');

			$('#newsletter_modal').removeClass('in');

			$('#newsletter_modal').css('display', 'none');

		    $('body .modal-backdrop').remove();

			 

	     }); 

		

    });

//]]</script>



<?php endif; ?>





<script type="text/javascript">//<![CDATA[

    jQuery(document).ready(function () {

		

		

        jQuery('#bestseller-list').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false});

		

		

    });

//]]</script>



<script type="text/javascript">

    //<![CDATA[

    if (jQuery(".footer-top").children('div').length > 0) {

        jQuery(".footer-top").children('div').addClass('col-sm-' + (12 / jQuery(".footer-top").children('div').length));

    }

    //]]

</script>

<script type="text/javascript">

//<![CDATA[

    if (jQuery(".footer-middle").children('div').length > 0) {

        jQuery(".footer-middle").children('div').addClass('col-sm-' + (12 / jQuery(".footer-middle").children('div').length));

    }

//]]

</script>

<script type="text/javascript">

//&lt;![CDATA[

    jQuery('.footer .scroll-top a').click(function () {

        jQuery('html, body').animate({scrollTop: 0}, 600, "easeOutCubic");

        return false;

    });

//]]

</script>



</body></html>