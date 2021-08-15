<?php

namespace App\Http\Controllers;

use App\Http\Requests\SaveSolutionRequest;
use App\Models\Challenge;
use App\Models\ChallengeCategory;
use App\Models\Solution;
use App\Models\SolutionUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\ChallengeUser;
class SolutionController extends Controller
{
    // all Solutions
    public function index()
    {
        $solutions = Solution::latest()->paginate(10)->toArray();
        return array_reverse($solutions);
    }

    //get detail solution with id solution
    public function detailSolution($id){
        $solution = Solution::find($id);
        $solution->load('users');
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
            $solutions[$chall->id]->load('users');
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
            'user_id' => auth('api')->user()->id,
            'challen_id' => $request->challen_id,
        ]);

        $solution->save();
        $solution_user = new SolutionUser([
            'user_id' =>auth('api')->user()->id, //user logined
            'solution_id'=> $solution->id,
        ]);
        $solution_user->save();
        // $challengeUser =  ChallengeUser::where('user_id','=', auth('api')->user()->id)
        // ->where('challen_id','=',$request->challen_id)->get();
        // $challengeUser[0]->status = 1;
        // $challengeUser[0]->update();
        return response()->json(['status'=>'success','message'=>'The solution successfully added','data'=>$solution],201);
    }

    // edit Solution
    public function show($id)
    {
        $solution = Solution::find($id);
        $solution->load('users');
        $solution->load('challenges');
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

    public function getAllSolution(){
        $solution = Solution::latest()->paginate(20);
        $solution->load('users');
        $solution->load('challenges');
        return response()->json(['status'=>'success','message'=>'get the solution successfully','data'=>$solution],200);
    }

    public function showDetailSolution($id)
    {
        $solution = Solution::find($id);
        $solution->load('users');
        $solution->load('challenges');
        return response()->json(['status'=>'success','message'=>'get the solution successfully','data'=>$solution],200);
    }

}
