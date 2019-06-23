<?php

namespace App\Widgets;

use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Widgets\BaseDimmer;
use App\Foro;

class Posts extends BaseDimmer
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

        $count = Foro::all()->where('leido',0)->count();
        $string = trans_choice(__('Post|Posts'), $count);

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-chat',
            'title'  => "{$count} {$string} sin leer",
            'text'   => __('tiene :count :string sin leer en su foro , haga click en el boton de abajo para ser redireccionado al foro ', ['count' => $count, 'string' => Str::lower($string)]),
            'button' => [
                'text' => __('ir al foro'),
                'link' => route('voyager.foro.index'),
            ],
            'image' => voyager_asset('images/widget-backgrounds/02.jpg'),
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return app('VoyagerAuth')->user()->can('browse', new Foro);
    }
}
