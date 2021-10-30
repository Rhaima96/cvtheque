@extends('layouts.app')

@section('content')

@if(count($errors))
<div class="alert alert-danger" role="alert">
  <ul>
 @foreach($errors->all() as $message)
    <li>{{$message}}</li>
    @endforeach
    </ul>
</div>
@endif

  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <form action="{{url('cvs/'.$cv->id)}}" method="Post" enctype="multipart/form-data">
          <input type="hidden" name="_method" value="PUT">
          {{csrf_field()}}
          <div class="form-group">
            <label for="">Titre</label>
            <input type="text" name="titre" class="form-control @if($errors->get('titre')) is-invalid @endif" value="{{$cv->titre}}">
          </div>

          <div class="form-group">
            <label for="">Présentation</label>
            <textarea name="presentation" class="form-control @if($errors->get('presentation')) is-invalid @endif" >{{$cv->presentation}}</textarea>
          </div>
           <div class="form-group">
            <label for="">Image</label>
            <input type="file" name="photo" class="form-control">
          </div>
          <div class="form-group">
            <input type="submit" value="Modifier" class="form-control btn btn-danger">
          </div>
        </form>
      </div>
    </div>
  </div>



@endsection
