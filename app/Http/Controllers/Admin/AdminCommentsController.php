<?php

namespace App\Http\Controllers\Admin;

use App\Comment;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AdminCommentsController extends Controller
{
    public function index($post_id)
    {
        $comments = Comment::where('post_id',$post_id)->get();
        return view('backend.comments.index', compact('comments'));
    }
    
    public function delete($id, Request $request)
    {
        $comment = Comment::whereId($id)->firstorfail();
        $comment->delete();
        $post_id = $request->get('post_id');
        //return redirect(action('Admin\AdminCommentsController@index', $post_id))->with('status', 'The comment has been deleted !');
        $comments = Comment::where('post_id',$post_id)->get();
        return view('backend.comments.index', compact('comments'))->with('status','the comment has been deleted');
    }
}