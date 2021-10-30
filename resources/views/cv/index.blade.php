@extends('layouts.app')

@section('content')

<div class="container">
  <div class="row">
    <div class="col-md-12">

       <h1>La liste de mes CVs</h1>
       <div class="float-right">
         <a href="{{url('cvs/create')}}" class="btn btn-success">Nouveau CV</a>
       </div><br><br><br>
       <div class="row">
        @foreach($cvs as $cv)
         <div class="col-sm-6 col-md-4">
           <div class="card">
             <img src="{{asset('storage/'.$cv->photo)}}" alt="" class="img-thumbnail" style="height: 200px"><br>
             <div class="caption">
               <h3>
                 {{$cv->titre}}
               </h3><br>


                 <form action="{{url('cvs/'.$cv->id)}}" method="post">
                     <a href="{{url('cvs/'.$cv->id)}}" class="btn btn-primary" role="button">Détails</a>
                 <a href="{{url('cvs/'.$cv->id.'/edit')}}"class="btn btn-secondary" role="button">Editer</a>
                   {{csrf_field()}}
                   {{method_field('DELETE')}}
                  @can('delete',$cv)
                   <button type="submit" class="btn btn-danger" role="button">Supprimer</button>
                  @endcan
                 </form>



             </div>
           </div>
         </div>
         @endforeach
       </div>
    </div>
  </div>
</div>

@endsection
