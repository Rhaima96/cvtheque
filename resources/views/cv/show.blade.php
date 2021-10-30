@extends('layouts.app')
@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}">
<div class="container" id="app">
  <div class="row">
    <div class="col-lg-12">

      <div class="card text-white bg-primary">
          <div class="panel-hiding">
            <div class="row">
              <div class="col-lg-10"><h3 class="card-title">
              Experiences
            </h3></div>
              <div class="col-lg-2 text-right"><button class="btn btn-success" @click="open.experience=true">Ajouter</button></div>
            </div>

          </div>

        <div class="card-body text-body bg-light">

          <div v-if="open.experience">
          <div class="form-group">
            <label for="">Titre</label>
            <input type="text" class="form-control" placeholder="Le titre" v-model="experience.titre">
          </div>
          <div class="form-group">
            <label for="">Contenu</label>
            <textarea class="form-control" placeholder="Le Contenu" v-model="experience.body"></textarea>
          </div>
          <div class="row">
            <div class="col-md-6"><div class="form-group">
              <label for="">Date Début</label>
              <input type="date" class="form-control" placeholder="Début" v-model="experience.debut">
            </div></div>
            <div class="col-md-6"><div class="form-group">
              <label for="">
                Date Fin
              </label>
              <input type="date" class="form-control" placeholder="Fin" v-model="experience.fin">
            </div>
          </div>

          <button v-if="edit.experience" class="btn btn-danger btn-block " @click="updateExperience">Modifier</button>

          <button v-else class="btn btn-info btn-block " @click="addExperience">Ajouter</button>
          <button class="btn btn-secondary btn-block" @click="open.experience=false">Fermer</button>

          </div></div><br>
          <ul class="list-group">
            <li class="list-group-item" v-for="experience in experiences">
              <div class="float-right">
                <button class="btn btn-warning btn-sm" @click="editExperience(experience)">Editer</button>
                <button class="btn btn-danger btn-sm" @click="deleteExperience(experience)">Supprimer</button>
              </div>
              <h3>@{{experience.titre}}</h3>
              <p>@{{experience.body}}</p>
              <small>@{{experience.debut}} - @{{experience.fin}} </small>
            </li>

          </ul>
        </div>
      </div>

      <hr>

      <div class="card text-white bg-primary">
          <div class="panel-hiding">
            <div class="row">
              <div class="col-lg-10"><h3 class="card-title">
              Formations
            </h3></div>
              <div class="col-lg-2 text-right"><button class="btn btn-success" @click="open.formation=true">Ajouter</button></div>
            </div>

          </div>

        <div class="card-body text-body bg-light">

          <div v-if="open.formation">
          <div class="form-group">
            <label for="">Titre</label>
            <input type="text" class="form-control" placeholder="Le titre" v-model="formation.titre">
          </div>
          <div class="form-group">
            <label for="">Description</label>
            <textarea class="form-control" placeholder="Le Contenu" v-model="formation.description"></textarea>
          </div>
          <div class="row">
            <div class="col-md-6"><div class="form-group">
              <label for="">Date Début</label>
              <input type="date" class="form-control" placeholder="Début" v-model="formation.debut">
            </div></div>
            <div class="col-md-6"><div class="form-group">
              <label for="">
                Date Fin
              </label>
              <input type="date" class="form-control" placeholder="Fin" v-model="formation.fin">
            </div>
          </div>

          <button v-if="edit.formation" class="btn btn-danger btn-block" @click="updateFormation">Modifier</button>

          <button v-else class="btn btn-info btn-block" @click="addFormation">Ajouter</button>
          <button class="btn btn-secondary btn-block" @click="open.formation=false">Fermer</button>


          </div></div><br>
          <ul class="list-group">
            <li class="list-group-item" v-for="formation in formations">
              <div class="float-right">
                <button class="btn btn-warning btn-sm" @click="editFormation(formation)">Editer</button>
                <button class="btn btn-danger btn-sm" @click="deleteFormation(formation)">Supprimer</button>
              </div>
              <h3>@{{formation.titre}}</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero ex illum vitae quae, mollitia ipsa deleniti minus laudantium corrupti, dolor reiciendis tempore laboriosam assumenda necessitatibus vel omnis adipisci possimus dicta sit quia. Fuga modi laboriosam neque assumenda, necessitatibus delectus, laborum quas velit expedita repellat, provident atque? Inventore ullam repellendus et.</p>
              <small>@{{formation.debut}} - @{{formation.fin}} </small>
            </li>

          </ul>
        </div>
      </div>

      <hr>

      <div class="card text-white bg-primary">
          <div class="panel-hiding">
            <div class="row">
              <div class="col-lg-10"><h3 class="card-title">
              Compétences
            </h3></div>
              <div class="col-lg-2 text-right">
                <button class="btn btn-success " @click="open.competence= true">Ajouter</button></div>
            </div>

          </div>
        <div class="card-body text-body bg-light">
          <div v-if="open.competence">
            <div class="form-group">
              <label for="">Titre</label>
              <input type="text" class="form-control" placeholder="Titre" v-model="competence.titre">
            </div>
            <div class="form-group">
              <label for="">Description</label>
              <textarea  class="form-control" placeholder="Le Contenu" v-model="competence.description"></textarea>
            </div>

               <button v-if="edit.competence" class="btn btn-danger btn-block" @click="updateCompetence">Modifier</button>

          <button v-else class="btn btn-info btn-block" @click="addCompetence">Ajouter</button>
          <button class="btn btn-secondary btn-block" @click="open.competence=false">Fermer</button>

         </div>

        <ul class="list-group">
          <li class="list-group-item" v-for="competence in competences">
            <div class="float-right">
              <button class="btn btn-warning btn-sm" @click="editCompetence(competence)">
                  Editer
                </button>
                <button class="btn btn-danger btn-sm" @click="deleteCompetence(competence)">
                  Supprimer
                </button>
            </div>
            <h3>@{{competence.titre}}</h3>
              <p>@{{competence.description}}</p>
          </li>
        </ul>
      </div>
</div>
      <hr>

      <div class="card text-white bg-primary">
          <div class="panel-hiding">
            <div class="row">
              <div class="col-lg-10"><h3 class="card-title">
              Projets
            </h3></div>
              <div class="col-lg-2 text-right"><button class="btn btn-success" @click="open.projet=true">Ajouter</button></div>
            </div>

          </div>

        <div class="card-body text-body bg-light">

          <div v-if="open.projet">
          <div class="form-group">
            <label for="">Titre</label>
            <input type="text" class="form-control" placeholder="Le titre" v-model="projet.titre">
          </div>
          <div class="form-group" >
            <label for="">Description</label>
            <textarea class="form-control" placeholder="Le Contenu" v-model="projet.description"></textarea>
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label for="">Lien</label>
                <input type="url" class="form-control" placeholder="Lien de Projet" v-model="projet.lien">
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label for="">Image</label>
                <input type="url" class="form-control" placeholder="Lien vers une image du projet" v-model="projet.image">
              </div>
            </div>
          </div>

          <div class="btn-group">
            <button class="btn btn-danger btn-lg" v-if="edit.projet" @click="updateProjet(projet)">Modifier</button>
            <button class="btn-info btn-lg" v-else @click="addProjet">Ajouter</button>
            <button class="btn btn-secondary btn-lg" @click="open.projet=false">Fermer</button>
          </div>
          </div>
          <ul class="list-group">
            <li class="list-group-item" v-for="projet in projets">
              <div class="float-right">
                <button class="btn btn-warning btn-sm" @click="editProjet(projet)">
                  Editer
                </button>
                <button class="btn btn-danger btn-sm" @click="deleteProjet(projet)">
                  Supprimer
                </button>
              </div>
              <h3>@{{projet.titre}}</h3>
              <p>@{{projet.description}}</p>
              <small><a :href="projet.lien">Voir...</a></small>
            </li>
          </ul>
        </div>

        </div>
      </div>

    </div>
  </div>
</div>




@endsection

@section('javascripts')

<script  src="{{asset('js/vue.js')}}"></script>
<script  src="{{asset('js/veeValidate.js')}}"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script type="text/javascript">
    Vue.use(VeeValidate);
        window.Laravel={!! json_encode([
                'csrf_token'=>csrf_token(),
                'idExperience' => $id,
                'url' => url('/')
            ])!!};
    </script>
<script src="{{asset('js/script.js')}}"></script>

@endsection
