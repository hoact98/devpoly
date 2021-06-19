<?php

namespace App\Http\Controllers;

use App\Http\Requests\SaveCategoryRequest;
use App\Models\ChallengeCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class ChallengeCategoryController extends Controller
{

    // all categories
    public function index()
    {
        return response()->json([
            'status'=>'success',
            'messege' => 'Succsess get list categories',
            'data' => ChallengeCategory::all(),
        ], 200);
    }

    // add category
    public function create(SaveCategoryRequest $request)
    {
        $slug = Str::slug($request->name,'-');
        $c = ChallengeCategory::where('slug','=', $slug)->first();
        if($c){
            $slug = $slug.Str::random(5);
        }
        $imageName = '';
        if($request->hasFile('image')){
           $image = time().'-'.$request->image->getClientOriginalName();
           $request->image->move(public_path('files'),$image);
           $imageName = 'files/'.$image;
        }
        $cate = new ChallengeCategory([
            'name' => $request->name,
            'slug' => $slug,
            'description' => $request->input('description'),
            'image'=>$imageName
        ]);
        $cate->save();
        return response()->json(['status'=>'success','message'=>'The challenge category successfully added','data'=>$cate],201);
    }

    // edit category
    public function show($id)
    {
        $cate = ChallengeCategory::find($id);
        return response()->json(['status'=>'success','message'=>'Success get challenge category','data'=>$cate],200);
    }

    // update category
    public function update($id, Request $request)
    {
        $cate = ChallengeCategory::find($id);
        $imageName = $cate->image;
        if($request->hasFile('image')){
           $image = time().'-'.$request->image->getClientOriginalName();
           $request->image->move(public_path('files'),$image);
           $imageName = 'files/'.$image;
        }
        $slug = Str::slug($request->name,'-');
        $c = ChallengeCategory::where('slug','=', $slug)
                     ->where('id','!=',$request->id)
                     ->first();
        if($c){
            $slug = $slug. Str::random(5);
        }
        $cate->name = $request->name;
        $cate->slug = $slug;
        $cate->description = $request->description;
        $cate->image = $imageName;
        $cate->save();

        return response()->json(['status'=>'success','message'=>'The challenge category successfully updated','data'=>$cate],200);
    }

    // delete category
    public function delete($id)
    {
        $cate = ChallengeCategory::find($id);
        $cate->delete();

        return response()->json(['status'=>'success','message'=>'The category successfully deleted','data'=>$cate],200);
    }
}
