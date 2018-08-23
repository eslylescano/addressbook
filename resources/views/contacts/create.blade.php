@extends('layouts.app')
<!-- creating contacts-->
@section('content') 
<h1 class="page-header">Create Contact</h1>

{!! Form::open(['action'=>['ContactController@store'],'method'=>'POST'])!!}

<div class="form-group">
   <label>Name</label>
   {{Form::text('name','',['class'=>"form-control", 'placeholder'=>"Place the name"])}}
</div>

<div class="form-group">
    <label>Address</label>
    {{Form::text('address','',['class'=>"form-control", 'placeholder'=>"Place the address"])}}
</div>

<div class="form-group">
    <label>Postcode</label>
    {{Form::text('postcode','',['class'=>"form-control", 'placeholder'=>"Place the postcode"])}}
</div>                           

<div class="form-group">
    <label>Telephone</label>
    {{Form::text('telephone','',['class'=>"form-control", 'placeholder'=>"Place the telephone"])}}
</div>  

<div class="form-group">
    <label>Email</label>
    {{Form::text('email','',['class'=>"form-control", 'placeholder'=>"Place the email"])}}
</div>   

<div class="form-group">
    <label>Date of Birth</label>
    {{Form::text('dob','',['class'=>"form-control", 'placeholder'=>"Place the Date of Birth"])}}
</div>              
<div class="text-right well well-sm">
   <button type="submit" class="btn btn-primary">Save</button>
   <a  class="btn btn-danger" href="{{ URL::to('/contacts') }}">Cancel</a>
</div>  

</div>                             


{!!Form::close()!!}
@endsection


