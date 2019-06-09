<?php

namespace App\Widgets;

use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use Illuminate\Support\Facades\DB;
use App\Diary;
use TCG\Voyager\Widgets\BaseDimmer;
use Illuminate\Support\Carbon;

class Notifications extends BaseDimmer
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
        $fecha = Carbon::now();
        $count = DB::table('Diary')->whereDate('date_task_start',$fecha)->count();
        $string = trans_choice(__('evento|eventos'), $count);
        $fecha = Carbon::now();
        //verifica tareas atrasadas y cambia el estado
        DB::table('Diary')->whereDate('date_task_end',"<",$fecha)->update(['status_task'=>'option2']);
        //eventos atrasados no cancelados
        $con = DB::table('Diary')->whereDate('date_task_start','<',$fecha)->count();
        //eventos para mañana
        $manana = DB::table('Diary')->whereDate('date_task_start','>',$fecha)->count();

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-bell',
            'title'  => "{$count} {$string} para hoy",
            'text'   => __('Para hoy tiene :count :string , para mañana tiene :manana :string y tiene :con :string atrasados, haga click en el boton de abajo para ir a la agenda', ['con' => $con,'manana' =>$manana,'count' => $count, 'string' => Str::lower($string)]),
            'button' => [
                'text' => __('Ver agenda'),
                'link' => route('voyager.diary.index'),
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
        return app('VoyagerAuth')->user()->can('browse', new Diary);
    }
}
