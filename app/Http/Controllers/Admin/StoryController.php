<?php
namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\PostCategory;
use App\Models\Post;
use App\Models\Story;
use App\Models\Image;

class StoryController extends Controller
{
  public function index(Story $category)
  {
      $categories = $category->all();
      return view('admin.story.index', compact('categories'));
  }

  public function create()
  {
    return view('admin.story.edit');
  }

  public function edit($category)
  {
    $category = Story::find($category);

    return view('admin.story.edit',compact('category'));
  }

  public function store(Request $request,Story $category)
  {
    $category->title = $request->title;
    $category->user_id = auth()->user()->id;
    
   
     

   

    if($request->hasfile('main_image'))
    {
        $imagemodel = new Image();
        $category->main_image =  $imagemodel->imageUpload($request->file('main_image'),'/images/uploads/blog/story/');
    }

    $response = $category->save();

    if ($response) {
      return redirect()->route('story.index')->with('success', 'Salvo com sucesso!');
    }
    return redirect()->back()->with('error', 'Falha ao salvar');
  }

  public function update(Request $request)
  {
    $category = Story::find($request->id);
    $category->title = $request->title;
    $category->user_id = auth()->user()->id;
    

    if($request->hasfile('main_image'))
    {
        $imagemodel = new Image();
        $category->main_image =  $imagemodel->imageUpload($request->file('main_image'),'/images/uploads/blog/story/');
    }

    $response = $category->save();

    if ($response) {
      return redirect()->route('story.index')->with('success', 'Salvo com sucesso!');
    }
    return redirect()->back()->with('error', 'Falha ao salvar');
  }

  public function destroy($id)
  {
    $category = Story::find($id);
    $category->delete();
    return redirect()->route('story.index')->with('success', 'Deletado com sucesso!');
  }
}
