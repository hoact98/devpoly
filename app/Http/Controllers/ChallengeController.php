<?php

namespace App\Http\Controllers;

use App\Http\Requests\SaveChallengeRequest;
use App\Models\Challenge;
use App\Models\ChallengeCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\ChallengeUser;

class ChallengeController extends Controller
{
    // all challenges
    public function index()
    {
        $challenges = Challenge::latest()->paginate(10);
        $challenges->load('category');
        return response()->json([
            'status' => 'success',
            'messege' => 'Succsess get list challenges',
            'data' => $challenges,
        ], 200);
    }

    // add challenge
    public function create(SaveChallengeRequest $request)
    {
        $slug = Str::slug($request->title, '-');
        $c = Challenge::where('slug', '=', $slug)->first();
        $SoucreName = '';
        $imageName = '';
        if ($request->hasFile('soucre')) {
            $soucre = $request->file('soucre');
            $soucres = time() . '-' . $soucre->getClientOriginalName();
            $soucre->move(public_path('soucres'), $soucres);
            $SoucreName = 'soucres/' . $soucres;
        }
        if ($request->hasFile('challenge_image')) {
            $image = $request->file('challenge_image');
            $images = time() . '-' . $image->getClientOriginalName();
            $image->move(public_path('challengeImage'), $images);
            $imageName = 'challengeImage/' . $images;
        }
        if ($c) {
            $slug = $slug . Str::random(5);
        }
        $challenge = new Challenge([
            'title' => $request->title,
            'slug' => $slug,
            'description' => $request->description,
            'language' => $request->language,
            'link_figma' => $request->link_figma,
            'soucre' => $SoucreName,
            'challenge_image' => $imageName,
            'level' => $request->level,
            'cate_challen_id' => $request->cate_challen_id,
        ]);
        $challenge->save();

        return response()->json(['status' => 'success', 'message' => 'The challenge successfully added', 'data' => $challenge], 201);
    }

    // edit challenge
    public function show($id)
    {
        $challenge = Challenge::find($id);
        $challenge['Onechallengecategory'] = ChallengeCategory::where('id', $challenge->cate_challen_id)->first();
        $challenge['challengecategory'] = ChallengeCategory::all();
        return response()->json(['status' => 'success', 'message' => 'Success get challenge', 'data' => $challenge], 200);
    }

    // update challenge
    public function update($id, SaveChallengeRequest $request)
    {

        $challenge = Challenge::find($id);
        $SoucreName = $challenge->soucres;
        $imageName =  $challenge->challenge_image;
        if ($request->hasFile('soucre')) {
            $soucre = $request->file('soucre');
            $soucres = time() . '-' . $soucre->getClientOriginalName();
            $soucre->move(public_path('soucres'), $soucres);
            $SoucreName = 'soucres/' . $soucres;
        }
        if ($request->hasFile('challenge_image')) {
            $image = $request->file('challenge_image');
            $images = time() . '-' . $image->getClientOriginalName();
            $image->move(public_path('challengeImage'), $images);
            $imageName = 'challengeImage/' . $images;
        }
        $challenge->title = $request->title;
        $challenge->description = $request->description;
        $challenge->language = $request->language;
        $challenge->link_figma = $request->link_figma;
        $challenge->soucre = $SoucreName;
        $challenge->challenge_image = $imageName;
        $challenge->level = $request->level;
        $challenge->cate_challen_id = $request->cate_challen_id;
        $challenge->save();

        return response()->json(['status' => 'success', 'message' => 'The challenge successfully updated', 'data' => $challenge], 200);
    }

    // delete challenge
    public function delete($id)
    {
        $challenge = Challenge::find($id);
        $challenge->delete();

        return response()->json(['status' => 'success', 'message' => 'The challenge successfully deleted'], 200);
    }
    // show one challenge
    public function get_One_Challenge($slug)
    {
        $challenge =  Challenge::where('slug', '=', $slug)->first();
        $challenge->load('category');
        return response()->json(['status' => 'success', 'message' => 'Success get challenge', 'data' => $challenge], 200);
    }
    public function addChallengeToUser($id)
    {
        $challengeUser =  new ChallengeUser([
            'user_id' => auth('api')->user()->id,
            'challen_id' => $id,
        ]);
        $challengeUser->save();

        return response()->json(['status' => 'success', 'message' => '', 'data' => $challengeUser], 200);
    }
    public function getChallengeToUser($slug)
    {
        $challenge =  Challenge::where('slug', '=', $slug)->first();
        $challengeUser =  ChallengeUser::where('challen_id', '=', $challenge->id)->get();

        foreach ($challengeUser as $key => $value) {
            if ($value['user_id'] == auth('api')->user()->id) {
                return response()->json(['status' => 'success', 'message' => '', 'data' => $value['challen_id']], 200);
            } 
        }
    }
}
