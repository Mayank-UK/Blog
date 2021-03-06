<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Category;
use App\Http\Requests\CategoryFormRequest;

class CategoriesController extends Controller
{
    //
    public function create()
    {
        return view('backend.categories.create');
    }
    
    public function store(CategoryFormRequest $request)
    {
        $category = new Category(array(
            'name' => $request->get('name'),
        ));
        $category->save();
        return redirect('/admin/categories/create')->with('status', 'A new category has been created!');
    }
    
    public function index()
    {
        $categories = Category::all();
        return view('backend.categories.index', compact('categories'));
    }
    
    public function delete($id)
    {
        $category = Category::whereId($id)->firstorfail();
        $category->delete();
        return redirect(action('Admin\CategoriesController@index'))->with('status', 'The category has been deleted !');
    }
}