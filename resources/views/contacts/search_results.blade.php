@extends('layouts.app')

@section('content')
<br>
<h1 class="page-header remove-margin">
    Contacts Results
    <a class="btn btn-primary pull-right" href="{{ URL::to('contacts') }}">Back to Contacts</a>   
</h1>

<br>
@if(count($contacts)>0)
<table class="table table-striped table-bordered">
    <thead>
        <tr>
            <th>Name</th>
            <th>Address</th>
            <th>PostCode</th>
            <th>Telephone</th>
            <th>Email</th>
            <th>Date of Birth</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        @foreach($contacts as $contact)
      <tr>
            <td>{{$contact->name}}</td>
            <td>{{$contact->address}}</td>
            <td>{{$contact->postcode}}</td>
            <td>{{$contact->telephone}}</td>
            <td>{{$contact->email}}</td>
            <td>{{$contact->dob}}</td>
            <td>
                <a class="btn btn-primary" href="{{ URL::to('contacts/'.$contact->id.'/edit/') }}">Edit</a> 
                {!! Form::open(['action'=>['ContactController@destroy',$contact->id],'method'=>'POST','class'=>'pull-right'])!!}
                {{Form::hidden('_method','DELETE')}}
                {{Form::submit('Delete',['class'=>'btn btn-danger'])}}
                {!! Form::close()!!}
              </td>

      </tr>
      
        @endforeach



    </tbody>
</table>

        @else
        <p>No contacts found in search</p>
        @endif  
@endsection