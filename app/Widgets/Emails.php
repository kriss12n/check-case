<?php

namespace App\Widgets;

use Illuminate\Support\Str;
use App\Email;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Widgets\BaseDimmer;
use Illuminate\Support\Facades\DB;


class Emails extends BaseDimmer
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = DB::table('Email')->where('estado',"no leido")->count();
        $string = trans_choice(__('mail|mails'), $count);

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-mail',
            'title'  => "tiene {$count} {$string} sin leer",
            'text'   => __('cuenta con :count :string sin leer, haga click en el boton de abajo para ver todos los mensajes', ['count' => $count, 'string' => Str::lower($string)]),
            'button' => [
                'text' => __('Ver email'),
                'link' => route('voyager.email.index'),
            ],
            'image' =>'/images/correo.jpg',
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return app('VoyagerAuth')->user()->can('browse', new Email());
    }
}
