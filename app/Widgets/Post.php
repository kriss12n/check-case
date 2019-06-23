<?php

namespace App\Widgets;

use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use Illuminate\Support\Facades\DB;
use App\Foro;
use Arrilot\Widgets\AbstractWidget;

class Post extends AbstractWidget
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
        //cuantos post no leido tiene
        $count = DB::table('Foro')->where('leido',0)->count();
        $string = trans_choice(__('post|posts'), $count);

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-chat',
            'title'  => "{$count} {$string} para hoy",
            'text'   => __('tiene :count :string no leidos, haga click en el boton de abajo para ir a la agenda', ['count' => $count, 'string' => Str::lower($string)]),
            'button' => [
                'text' => __('Ver Foro'),
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
        return app('VoyagerAuth')->user()->can('browse', new Post);
    }
}
