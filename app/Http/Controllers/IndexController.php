<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\MessageForm;
use App\Email;
use App\Index;
use App\Contacto;
use App\About;
use App\Service;
use App\ServicesCard;
use App\Team;
use App\TeamCard;
use App\AboutCard;

class IndexController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $contenido = Index::all();
        $contacto = Contacto::all();
        $service = Service::all();
        $cards = ServicesCard::all();
        $team = Team::all();
        $about = About::select('tittle','Contenido')->get();
        $cardt = TeamCard::all();
        $carda= AboutCard::all();
        $Image = About::select('image')->get();
//esto se hace para saber si el about contiene una imagen se pueda cumplir una condicion en la vista
        foreach($Image as $buscar){
            $image = $buscar->image;
        }


        return view('welcome',compact(
            'contenido',
            'contacto',
            'about',
            'service',
            'cards',
            'team',
            'cardt',
            'carda',
            'image'

));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $correo = new Email();
        $correo->nombre = $request->name;
        $correo->correo = $request->email;
        $correo->asunto = $request->subject;
        $correo->estado = "no leido";
        $correo->mensaje = $request->mensaje;
        $correo->save();

        //correo para mi xd
        Mail::to('kriss12n@gmail.com')->queue(new MessageForm($correo));
        return  redirect('/')->with('alert','Mensaje Enviado');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
