<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $guarded = ['id'];
    public function categories()
    {
        return $this->belongsToMany('App\Category')->withTimestamps();
    }
    /*
    public function comments()
    {
        return $this->morphMany('App\Comment', 'post');
    }
    */
    public function comments()
    {
        return $this->hasMany('App\Comment', 'post_id');
    }
    
    public function delete()
    {
        $this->comments()->delete();
        return parent::delete();
    }
    
}