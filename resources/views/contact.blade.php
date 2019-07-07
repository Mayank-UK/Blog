@extends('layouts.app')

@section('content')
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<div class="container">
    <div class="row">
        <div class="col-sm-8 col-md-5 col-ld-4 mx-auto shadow">
            <img class="card-img-top" src="{{url('images/pic1.jpg')}}"  alt="Card image">
            <div class="card-body">
                <h4 class="card-title text-center my-0">Mayank Kumar</h4>
                <p class="card-text text-center my-0">Freelance Web Developer</p>
                <span class="d-block text-center my-0" style="font-size: 20px">
                    <i class="fa fa-facebook"></i>
                    <i class="fa fa-instagram"></i>
                    <i class="fa fa-twitter"></i>
                    <i class="fa fa-linkedin"></i>
                </span>
                <p class="card-text text-center my-0">mayankupadhyay191298@gmail.com</p>
            </div>
        </div>
    </div>
</div>
@endsection