@extends('layouts.app')

@section('content')


	<div class="container">
    <div class="row">
      <div class="col-md-12">
        <form action="{{url('cvs')}}" method="Post" enctype="multipart/form-data">
          {{csrf_field()}}
          <div class="form-group">
            <label for="">Titre</label>
            <input type="text" name="titre" class="form-control @if($errors->get('titre')) is-invalid @endif" value="{{old('titre')}}">
            @if($errors->get('titre'))
              @foreach($errors->get('titre') as $message)
                <div class="container">
            <div class="row">
              <div class="alert alert-danger col-md-4" role="alert">{{$message}}</div>
            </div>
          </div>
              @endforeach
            @endif
          </div>


          <div class="form-group">
            <label for="">Présentation</label>
            <textarea name="presentation" class="form-control @if($errors->get('presentation')) is-invalid @endif">{{old('presentation')}}</textarea>
             @if($errors->get('presentation'))
              @foreach($errors->get('presentation') as $message)
                <div class="container">
            <div class="row">
              <div class="alert alert-danger col-md-4" role="alert">{{$message}}</div>
            </div>
          </div>
              @endforeach
            @endif
          </div>
          <div class="form-group">
            <label for="">Image</label>
            <input type="file" name="photo" class="form-control">
          </div>
          <div class="form-group">
            <input type="submit" value="Enregistrer" class="form-control btn btn-primary">
          </div>
        </form>
      </div>
    </div>
  </div>



@endsection
