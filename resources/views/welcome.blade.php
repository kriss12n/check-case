<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Check-Case</title>
    <link rel="stylesheet" href="/css/index.css">
    <link href="https://fonts.googleapis.com/css?family=Pacifico&display=swap" rel="stylesheet">
</head>

<body>
    <nav class="navbar navbar-light navbar-expand-md">
        <div class="container-fluid"><a class="navbar-brand navbar-brand-logo" href="#"> <img src="/images/indice.jpeg" style="max-height:50px;"></a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <h5 style="font-family: 'Pacifico', cursive;">Check-case</h5>
            <div
                class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item btn " role="presentation"><a class="nav-link" href="#">Nosotros</a></li>
                    <li class="nav-item btn " role="presentation"><a class="nav-link" href="#">Servicios</a></li>
                    <li class="nav-item btn " role="presentation"><a class="nav-link" href="#">Contacto</a></li>
                    <li class="nav-item btn " role="presentation" ><a class="nav-link" href="{{url('/admin/login')}}">Iniciar Sesion</a></li>
                </ul>
        </div>
        </div>
    </nav>
    <div class="jumbotron product-month" style="margin: auto;">
        <div class="work-month" style="margin: auto;">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 col-md-7 offset-sm-7 offset-md-5">
                        <h1 class="text-white">Heading text</h1>
                        <p class="text-lowercase text-white">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
                        <p><a class="btn btn-info text-nowrap text-white" role="button" href="#">Learn more</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container text-body" id="nosotros">				<div class="caption v-middle text-center">
					<h1 class="cd-headline clip">
			            <span class="blc">Somos| </span>
			            <span class="cd-words-wrapper">
			              <b class="is-visible">Justicia.</b>
			              <b>Defensa.</b>
			              <b>Abogados.</b>
			            </span>
	          		</h1>
				</div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dapibus felis et libero scelerisque, sed aliquet nulla tincidunt. Quisque lorem nisl, semper vitae mattis nec, vestibulum nec risus. Sed ut volutpat tortor, ut sodales diam. Integer at tristique turpis. Integer orci leo, fringilla ac aliquet vitae, condimentum non lorem. Duis velit ex, aliquam vel pellentesque et, dictum vitae mauris. Vestibulum commodo luctus tortor eu ultrices. Fusce commodo enim non eros consectetur maximus. Donec venenatis dolor ut vestibulum fermentum. Aliquam malesuada sit amet nulla id imperdiet. Suspendisse maximus purus et ligula maximus, a luctus ante fringilla.

In vitae velit risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus tincidunt venenatis mi quis congue. Cras eu leo nisi. Ut ornare nisi eget sapien dapibus, eu ornare dolor egestas. Donec venenatis neque lacus, nec mollis odio fermentum a. Maecenas at elit sed diam elementum varius mollis vel arcu. Praesent ornare nisl mi, et posuere purus viverra sed. Sed a lacus nec lorem tincidunt condimentum. Nulla eu tellus pulvinar, tristique metus a, sodales nibh. Ut magna nisi, laoreet id lacus non, cursus bibendum tortor. Sed pretium elit erat. In non pretium nulla.</div>
    <div>
        <div class="container" id="servicios" style="background-color: #eff7fb;">
            <div class="caption v-middle text-center">
					<h1 class="cd-headline clip">
			            <span class="blc">Nuestros | </span>
			            <span class="cd-words-wrapper">
			              <b class="is-visible">Servicios.</b>
			              <b>Compromiso.</b>

			            </span>
	          		</h1>
				</div>
            <div class="row">
                <div class="col-12 col-sm-4 col-md-4 col-lg-4">
                    <h1 class="text-center">Lorem</h1>
                    <div class="login-card"><img src="http://placehold.it/350x350" class="profile-img-card">
                        <p class="profile-name-card">Lorem ipsum</p>
                    </div>
                </div>
                <div class="col-12 col-sm-4 col-md-4 col-lg-4">
                    <h1 class="text-center">ipsum</h1>
                    <div class="login-card"><img src="http://placehold.it/350x350" class="profile-img-card">
                        <p class="profile-name-card">Lorem ipsum</p>
                    </div>
                </div>
                <div class="col-12 col-sm-4 col-md-4 col-lg-4">
                    <h1 class="text-center">dolor</h1>
                    <div class="login-card"><img src="http://placehold.it/350x350" class="profile-img-card">
                        <p class="profile-name-card">Lorem ipsum</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="modal fade" role="dialog" tabindex="-1" id="modal1">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Contact Information</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
                    <div class="modal-body">
                        <form action="javascript:void(0);" method="get" id="contactForm"><input class="form-control" type="hidden" name="Introduction" value="This email was sent from www.awebsite.com"><input class="form-control" type="hidden" name="subject" value="Awebsite.com Contact Form"><input class="form-control"
                                type="hidden" name="to" value="email@awebsite.com">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <div id="successfail"></div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-12 col-md-6" id="message">
                                    <h2 class="h4"><i class="fa fa-envelope"></i> Contact Us<small><small class="required-input">&nbsp;(*required)</small></small>
                                    </h2>
                                    <div class="form-group"><label for="from-name">Name</label><span class="required-input">*</span>
                                        <div class="input-group">
                                            <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-user-o"></i></span></div><input class="form-control" type="text" name="name" required="" placeholder="Full Name" id="from-name"></div>
                                    </div>
                                    <div class="form-group"><label for="from-email">Email</label><span class="required-input">*</span>
                                        <div class="input-group">
                                            <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-envelope-o"></i></span></div><input class="form-control" type="text" name="email" required="" placeholder="Email Address" id="from-email"></div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-12 col-sm-6 col-md-12 col-lg-6">
                                            <div class="form-group"><label for="from-phone">Phone</label><span class="required-input">*</span>
                                                <div class="input-group">
                                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-phone"></i></span></div><input class="form-control" type="text" name="phone" required="" placeholder="Primary Phone" id="from-phone"></div>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-12 col-lg-6">
                                            <div class="form-group"><label for="from-calltime">Best Time to Call</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-clock-o"></i></span></div><select class="form-control" name="call time" id="from-calltime"><optgroup label="Best Time to Call"><option value="Morning" selected="">Morning</option><option value="Afternoon">Afternoon</option><option value="Evening">Evening</option></optgroup></select></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group"><label for="from-comments">Comments</label><textarea class="form-control" rows="5" name="comments" placeholder="Enter Comments" id="from-comments"></textarea></div>
                                    <div class="form-group">
                                        <div class="form-row">
                                            <div class="col"><button class="btn btn-primary btn-block" type="reset"><i class="fa fa-undo"></i> Reset</button></div>
                                            <div class="col"><button class="btn btn-primary btn-block" type="submit">Submit <i class="fa fa-chevron-circle-right"></i></button></div>
                                        </div>
                                    </div>
                                    <hr class="d-flex d-md-none">
                                </div>
                                <div class="col-12 col-md-6">
                                    <h2 class="h4"><i class="fa fa-location-arrow"></i> Locate Us</h2>
                                    <div class="form-row">
                                        <div class="col-12">
                                            <div class="static-map"><a href="https://www.google.com/maps/place/Daytona+International+Speedway/@29.1815062,-81.0744275,15z/data=!4m13!1m7!3m6!1s0x88e6d935da1cced3:0xa6b3e1bc0f2fc83a!2s1801+W+International+Speedway+Blvd,+Daytona+Beach,+FL+32114!3b1!8m2!3d29.187028!4d-81.0703076!3m4!1s0x88e6d949a4cb8593:0x1387c6c0b5c8cc97!8m2!3d29.1851681!4d-81.0705292"
                                                    target="_blank" rel="noopener"> <img class="img-fluid" src="http://maps.googleapis.com/maps/api/staticmap?autoscale=2&amp;size=600x210&amp;maptype=roadmap&amp;format=png&amp;visual_refresh=true&amp;markers=size:mid%7Ccolor:0xff0000%7Clabel:%7C582+1801+W+International+Speedway+Blvd+Daytona+Beach+FL+32114&amp;zoom=12" alt="Google Map of Daytona International Speedway"></a></div>
                                        </div>
                                        <div class="col-sm-6 col-md-12 col-lg-6">
                                            <h2 class="h4"><i class="fa fa-user"></i> Our Info</h2>
                                            <div><span><strong>Name</strong></span></div>
                                            <div><span>email@awebsite.com</span></div>
                                            <div><span>www.awebsite.com</span></div>
                                            <hr class="d-sm-none d-md-block d-lg-none">
                                        </div>
                                        <div class="col-sm-6 col-md-12 col-lg-6">
                                            <h2 class="h4"><i class="fa fa-location-arrow"></i> Our Address</h2>
                                            <div><span><strong>Office Name</strong></span></div>
                                            <div><span>55 Icannot Dr</span></div>
                                            <div><span>Daytone Beach, FL 85150</span></div>
                                            <div><abbr data-toggle="tooltip" data-placement="top" title="Office Phone: 555-867-5309">O:</abbr> 555-867-5309</div>
                                            <hr class="d-sm-none">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <section id="contact" style="padding:40px;padding-right:5px;padding-left:4px;">
            <div class="container">
                <form action="javascript:void();" method="post" id="contactForm" style="padding:15px;">
                    <div class="form-row" style="margin-left:0px;margin-right:0px;padding:10px;">
                        <div class="col-md-6" style="padding-left:20px;padding-right:20px;">
                            <fieldset></fieldset>
                            <legend><i class="fa fa-info"></i>&nbsp;Informacion</legend>
                            <p></p>
                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td><i class="fa fa-building"></i></td>
                                            <td>Telefono</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fa fa-map-marker"></i></td>
                                            <td>Ubicacion</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fa fa-phone"></i></td>
                                            <td>Celular</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fa fa-envelope"></i></td>
                                            <td>Mail</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-12 col-md-6" id="message" style="padding-right:20px;padding-left:20px;">
                            <fieldset>
                                <legend><i class="fa fa-envelope"></i>&nbsp;Contacto</legend>
                            </fieldset>
                            <div class="form-group has-feedback"><label for="from_name">Nombre</label><input class="form-control" type="text"></div>
                            <div class="form-group has-feedback"><label for="from_email">Email</label><input class="form-control" type="text"></div>
                            <div class="form-group"><label for="comments">Mensaje</label><input class="form-control" type="text"></div>
                            <div class="form-group"><button class="btn btn-primary active btn-block" type="submit" style="background-color:#303641;">Enviar<i class="fa fa-chevron-circle-right"></i></button></div>
                            <hr>
                        </div>
                    </div>
                </form>
            </div>
        </section>
        <footer class="page-footer">
            <div class="container">
                <div class="row">
                    <div class="col-6 col-md-3">
                        <h4>Lorem Ipsum dolor</h4>
                        <ul class="footer-links">
                            <li><a href="#">Consectetur adipiscing</a></li>
                            <li><a href="#">Facilisis vulputate est eget</a></li>
                            <li><a href="#">Lorem ipsum dolor</a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-3">
                        <h4>Sed elit eros</h4>
                        <ul class="footer-links">
                            <li><a href="#">Aenean condimentum viverra</a></li>
                            <li><a href="#">Proin porta diam</a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-3">
                        <h4>Donec quis turpis vel</h4>
                        <ul class="footer-links">
                            <li><a href="#">Proin laoreet volutpat</a></li>
                            <li><a href="#">Aenean tincidunt est</a></li>
                        </ul>
                        <h4>Nulla cursus finibus</h4>
                        <ul class="footer-links">
                            <li><a href="#">Curabitur elementum odio</a></li>
                            <li><a href="#">Proin condimentum ac</a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-3">
                        <h4>Nullam ut rutrum elit</h4>
                        <ul class="footer-links">
                            <li><a href="#">Praesent gravida</a></li>
                            <li><a href="#">Praesent egestas</a></li>
                        </ul>
                        <h4>Ut eget feugiat ante</h4>
                        <ul class="footer-links">
                            <li><a href="#">Etiam ornare vestibulum</a></li>
                            <li><a href="#">Donec tincidunt tempus</a></li>
                        </ul>
                    </div>
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.</p>
                <hr>
                <div class="footer-legal">
                    <div class="float-md-right region"></div>
                    <div class="d-inline-block copyright">
                        <p class="d-inline-block">Copyright © 2019. All rights reserved.<br></p>
                    </div>
                    <div class="d-inline-block legal-links">
                        <div class="d-inline-block item">
                            <h5>Privacy Policy</h5>
                        </div>
                        <div class="d-inline-block item">
                            <h5>Terms of Use</h5>
                        </div>
                        <div class="d-inline-block item">
                            <h5>Legal</h5>
                        </div>
                        <div class="d-inline-block item">
                            <h5>License</h5>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </footer>
    <script src="/js/index.js"></script>

</body>

</html>
