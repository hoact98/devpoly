<?php

namespace App\Http\Controllers;

use App\Http\Requests\SaveChallengeRequest;
use App\Models\Challenge;
use App\Models\ChallengeCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use JamesDordoy\LaravelVueDatatable\Http\Resources\DataTableCollectionResource;
class ChallengeController extends Controller
{
    // all challenges
    public function challenges()
    {
        $challenges= Challenge::all();
        $challenges->load('category');
        return response()->json([
            'status'=>'success',
            'messege' => 'Succsess get list challenges',
            'data' => $challenges,
        ], 200);
    }
    public function index(Request $request)
    {
        $query = Challenge::eloquentQuery(
            $request->input('column'),
            $request->input('dir'),
            $request->input('search'),
            [
                "category",
            ]
        );
        
        $data = $query->paginate($request->input('length'));
        return new DataTableCollectionResource($data);
    }
    // add challenge
    public function create(SaveChallengeRequest $request)
    {
        $slug = Str::slug($request->title,'-');
        $c = Challenge::where('slug','=', $slug)->first();
        if($c){
            $slug = $slug.Str::random(5);
        }
        $challenge = new Challenge([
            'title' => $request->title,
            'slug' =>$slug,
            'description' => $request->description,
            'language' => $request->language,
            'link_figma' => $request->link_figma,
            'level' => $request->level,
            'cate_challen_id' => $request->cate_challen_id,
        ]);
        $challenge->save();

        return response()->json(['status'=>'success','message'=>'The challenge successfully added','data'=>$challenge],201);
    }

    // edit challenge
    public function show($id)
    {
        $challenge = Challenge::find($id);
        $challenge['Onechallengecategory'] = ChallengeCategory::where('id',$challenge->cate_challen_id )->first();
        $challenge['challengecategory'] = ChallengeCategory::all();
        return response()->json(['status'=>'success','message'=>'Success get challenge','data'=>$challenge],200);
    }

    // update challenge
    public function update($id, SaveChallengeRequest $request)
    {
        $challenge = Challenge::find($id);
        $challenge->update($request->all());

        return response()->json(['status'=>'success','message'=>'The challenge successfully updated','data'=>$challenge],200);
    }

    // delete challenge
    public function delete($id)
    {
        $challenge = Challenge::find($id);
        $challenge->delete();

        return response()->json(['status'=>'success','message'=>'The challenge successfully deleted'],200);
    }
      // show one challenge
      public function get_One_Challenge($slug)
      {
          $challenge =  Challenge::where('slug','=', $slug)->first();
          $challenge->load('category');
          return response()->json(['status'=>'success','message'=>'Success get challenge','data'=>$challenge],200);
      }
}
