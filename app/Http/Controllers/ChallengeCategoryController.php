<?php

namespace App\Http\Controllers;

use App\Http\Requests\SaveCategoryRequest;
use App\Models\ChallengeCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Challenge;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use JamesDordoy\LaravelVueDatatable\Http\Resources\DataTableCollectionResource;
class ChallengeCategoryController extends Controller
{

    // all categories
    public function categories()
    {
        return response()->json([
            'status'=>'success',
            'messege' => 'Succsess get list categories',
            'data' => ChallengeCategory::all(),
        ], 200);
    }

    public function index(Request $request)
    {
        $query = ChallengeCategory::eloquentQuery(
            $request->input('column'),
            $request->input('dir'),
            $request->input('search'),
            [
                "challenges",
            ]
        );
        
        $data = $query->paginate($request->input('length'));

        return new DataTableCollectionResource($data);
    }
    // add category
    public function create(SaveCategoryRequest $request)
    {
        $rule= [
            'image' => 'required|image',
          ];
          $messages = [
              'image.required' => "Hãy chọn file ảnh.",
              'image.image' => "Phải là một hình ảnh.",
          ];
     
          $validator =  Validator::make($request->all(),$rule,$messages);
            if ($validator->fails()) { 
              return response()->json(['errors'=>$validator->errors()],422);
            }
        $slug = Str::slug($request->name,'-');
        $c = ChallengeCategory::where('slug', $slug)->first();
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
    public function update($id, SaveCategoryRequest $request)
    {
        $cate = ChallengeCategory::find($id);
        $imageName = $cate->image;
        if($request->hasFile('image')){
            $rule= [
                'image' => 'image',
              ];
              $messages = [
                  'image.image' => "Phải là một hình ảnh.",
              ];
         
            $validator =  Validator::make($request->all(),$rule,$messages);
            if ($validator->fails()) { 
                return response()->json(['errors'=>$validator->errors()],422);
            }
           $image = time().'-'.$request->image->getClientOriginalName();
           $request->image->move(public_path('files'),$image);
           $imageName = 'files/'.$image;
            File::delete($cate->image);
        }
        $slug = Str::slug($request->name,'-');
        $c = ChallengeCategory::where('slug', $slug)
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
        File::delete($cate->image);
        $chall = Challenge::where('cate_challen_id',$cate->id)->get();
        foreach ($chall as $c ) {
            File::delete($c->image,$c->resources);
        }
        $cate->delete();
        return response()->json(['status'=>'success','message'=>'The category successfully deleted','data'=>$cate],200);
    }
    public function get_All_Challenge_Category(){
        return response()->json([
            'status'=>'success',
            'messege' => 'Succsess get list categories',
            'data' => ChallengeCategory::all(),
        ], 200);
    }
    public function get_One_Challenge_Category($slug){
        $ChallengeCategory = ChallengeCategory::where('slug','=', $slug)->first();
        $ChallengeCategoryID = $ChallengeCategory->id;
        if($ChallengeCategory != null){
           $ChallengeCategory->load('challenges');
        }
        return response()->json(['status'=>'success','message'=>'Success get challenge category','data'=>$ChallengeCategory],200);
    }
}
