@extends('layouts.app')
<!-- editing contacts-->
@section('content') 
<h1 class="page-header">Create Contact</h1>

{!! Form::open(['action'=>['ContactController@update',$contact->id],'method'=>'POST'])!!}

<div class="form-group">
   <label>Name</label>
   {{Form::text('name',$contact->name,['class'=>"form-control", 'placeholder'=>"Place the name"])}}
</div>

<div class="form-group">
    <label>Address</label>
    {{Form::text('address',$contact->address,['class'=>"form-control", 'placeholder'=>"Place the address"])}}
</div>

<div class="form-group">
    <label>Postcode</label>
    {{Form::text('postcode',$contact->postcode,['class'=>"form-control", 'placeholder'=>"Place the postcode"])}}
</div>                           

<div class="form-group">
    <label>Telephone</label>
    {{Form::text('telephone',$contact->telephone,['class'=>"form-control", 'placeholder'=>"Place the telephone"])}}
</div>  

<div class="form-group">
    <label>Email</label>
    {{Form::text('email',$contact->email,['class'=>"form-control", 'placeholder'=>"Place the email"])}}
</div>   

<div class="form-group">
    <label>Date of Birth</label>
    {{Form::text('dob',$contact->dob,['class'=>"form-control", 'placeholder'=>"Place the Date of Birth"])}}
</div>
{{Form::hidden('_method','PUT')}}               
<div class="text-right well well-sm">
   <button type="submit" class="btn btn-primary">Save</button>
   <a  class="btn btn-danger" href="{{ URL::to('/contacts') }}">Cancel</a>
</div>  




{!!Form::close()!!}
@endsection


