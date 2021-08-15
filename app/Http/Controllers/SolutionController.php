<?php

namespace App\Http\Controllers;

use App\Http\Requests\SaveSolutionRequest;
use App\Models\Challenge;
use App\Models\ChallengeCategory;
use App\Models\Solution;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;
use JamesDordoy\LaravelVueDatatable\Http\Resources\DataTableCollectionResource;

class SolutionController extends Controller
{
    public function __construct()
    {
        if (Cookie::get('token') != null) {
            $this->middleware(['header_api','auth:api']);
        }
    }
    // all Solutions
    public function solutions()
    {
        $solutions= Solution::all();
        $solutions->load('user');
        $solutions->load('challenge');
        $solutions->load('feedbacks');
        return response()->json([
            'status'=>'success',
            'messege' => 'Succsess get list solutions',
            'data' => $solutions,
        ], 200);
    }
    public function index(Request $request)
    {   
        $query = Solution::eloquentQuery(
            $request->input('column'),
            $request->input('dir'),
            $request->input('search'),
            [
                "feedbacks","challenge","user"
            ],
           
        );
        $data = $query->paginate($request->input('length'));
        return new DataTableCollectionResource($data);
    }
    //get detail solution with id solution
    public function detailSolution($id){
        $solution = Solution::find($id);
        $solution->load('user');
        $solution->load('feedbacks');
        return response()->json(['status'=>'success','message'=>'Get solution successfully','data'=>$solution],200);
    }

    //get all solution same category
    public function categorySolution($slug){
        $cate = ChallengeCategory::where('slug',$slug)->first();
        $cate_id =$cate->id;
        $challenges = Challenge::where('cate_challen_id',$cate_id)->get();
        $solutions = [];
        foreach($challenges as $chall){
            $solutions[$chall->id] = Solution::where('challen_id',$chall->id)->get();
            $solutions[$chall->id]->load('user');
            $solutions[$chall->id]->load('feedbacks');
        }
        return response()->json(['status'=>'success','message'=>'Get solution successfully','data'=>$solutions],200);
    }
    // add Solution
    public function create(SaveSolutionRequest $request)
    {
        $solution = new Solution([
            'title' => $request->title,
            'description' => $request->description,
            'link_github' => $request->link_github,
            'demo_url' => $request->demo_url,
            'user_id' => Auth::id(),
            'challen_id' => $request->challen_id,
        ]);
        $solution->save();
        
        return response()->json(['status'=>'success','message'=>'The solution successfully added','data'=>$solution],201);
    }

    // edit Solution
    public function show($id)
    {
        $solution = Solution::find($id);
        $solution->load('user');
        $solution->load('challenge');
        $solution->load('feedbacks');
        $solution['challenges'] = Challenge::all();
        return response()->json(['status'=>'success','message'=>'get the solution successfully','data'=>$solution],200);
    } 

    // update Solution
    public function update($id, SaveSolutionRequest $request)
    {
        $solution = Solution::find($id);
        $solution->update($request->all());

        return response()->json(['status'=>'success','message'=>'The solution successfully updated','data'=>$solution],200);
    }

    // delete Solution
    public function delete($id)
    {
        $solution = Solution::find($id);
        $solution->delete();

        return response()->json(['status'=>'success','message'=>'The solution successfully delete','data'=>$solution],200);
    }
}
