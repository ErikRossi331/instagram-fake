<?php
namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\PostCategory;
use App\Models\Post;
use App\Models\Story;
use App\Models\Image;

class PostCategoryController extends Controller
{
  public function index(PostCategory $category)
  {
      $categories = $category->all();
      return view('admin.postCategory.index', compact('categories'));
  }

  public function create()
  {
    return view('admin.postCategory.edit');
  }

  public function edit($category)
  {
    $category = PostCategory::find($category);
    $story = Story::all();
    return view('admin.postCategory.edit',compact('category','story'));
  }

  public function store(Request $request,PostCategory $category)
  {
    $category->title = $request->title;
    $category->user_id = auth()->user()->id;
    $category->description = $request->description;
    $category->content = $request->content;
    if(empty(trim($request->url)))
      $category->url = str_slug($request->title);
    else
      $category->url = str_slug($request->url);

    $category->meta_title = $request->meta_title ? $request->meta_title : $request->title;
    $category->meta_description = $request->meta_description ? $request->meta_description : $request->description;
    $category->meta_keywords = $request->meta_keywords;

    if($request->hasfile('main_image'))
    {
        $imagemodel = new Image();
        $category->main_image =  $imagemodel->imageUpload($request->file('main_image'),'/images/uploads/blog/');
    }

     $category->story()->detach();
      if(isset($request->story))
        foreach ($request->story as $cat_id) {
          $cat = Story::findOrFail($cat_id);
          $cat_2 = Post::findOrFail($cat->id);
          //attach() vincula categoria ao post
          $category->story()->attach($cat, $cat_2);
        }

    $response = $category->save();

    if ($response) {
      return redirect()->route('postCategory.index')->with('success', 'Salvo com sucesso!');
    }
    return redirect()->back()->with('error', 'Falha ao salvar');
  }

  public function update(Request $request)
  {
    $category = PostCategory::find($request->id);
    $category->title = $request->title;
    $category->user_id = auth()->user()->id;
    $category->description = $request->description;
    $category->content = $request->content;
    if(empty(trim($request->url)))
      $category->url = str_slug($request->title);
    else
      $category->url = str_slug($request->url);

    $category->meta_title = $request->meta_title ? $request->meta_title : $request->title;
    $category->meta_description = $request->meta_description ? $request->meta_description : $request->description;
    $category->meta_keywords = $request->meta_keywords;

    if($request->hasfile('main_image'))
    {
        $imagemodel = new Image();
        $category->main_image =  $imagemodel->imageUpload($request->file('main_image'),'/images/uploads/blog/');
    }

    $category->story()->detach();
    if(isset($request->story))
      foreach ($request->story as $cat_id) {
        $cat = Story::findOrFail($cat_id);
        //attach() vincula categoria ao post
        $category->story()->attach($cat);
      }

    $response = $category->save();

    if ($response) {
      return redirect()->route('postCategory.index')->with('success', 'Salvo com sucesso!');
    }
    return redirect()->back()->with('error', 'Falha ao salvar');
  }

  public function destroy($id)
  {
    $category = PostCategory::find($id);
    $category->delete();
    return redirect()->route('postCategory.index')->with('success', 'Deletado com sucesso!');
  }
}
