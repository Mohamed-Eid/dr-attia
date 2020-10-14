<?php

namespace App\Http\Controllers\Dashboard;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Setting;
use Illuminate\Support\Facades\DB;

class SettingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $settings = Setting::paginate(20);
        return view('dashboard.settings.index',compact('settings'));
    }

    public function all()
    {
        $settings_classes = DB::table('settings')
            ->select(DB::raw('count(*) as setting_count, class'))
            ->groupBy('class')->get();
        
        $settings = Setting::all();    
        $data = [];

        foreach ($settings as $setting) {
            //$data['dd'][] = $setting;
            foreach ($settings_classes as $class) {
                if($class->class == $setting->class){
                    $class!=null ? $data[$class->class][] = $setting : $data['others'][] = $setting; 
                }
            } 
        }
        dd($data);
        //return view('dashboard.settings.index',compact('settings'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $settings = Setting::all();
        return view('dashboard.settings.create',compact('settings'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->location = $request->lat.','.$request->lng;
        $rules = [
            'lat' => 'required',
            'key' => 'required|unique:settings',
            'type' => 'required',
        ];

        $request->validate($rules);    
        $data = [
            'key' => '',
            'value' => '',
            'type' => '',
            'class' => '',
            'parent_id' => null,
        ];

        $data['key'] = $request->key;
        $data['class'] = $request->class;
        $data['parent_id'] = $request->parent_id;

        if($request->type == 'text'){
            $data['type'] = 'text';
            $data['value'] = $request->value;
        }elseif($request->type == 'image'){
            $data['type'] = 'image';
            $data['value'] = upload_image('setting_images',$request->value);
        }else{
            $data['type'] = 'location';
            $data['value'] = $request->location;
        }
    
        Setting::create($data);
        
        session()->flash('success', __('site.added_successfully'));

        return redirect()->route('dashboard.settings.index');
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
