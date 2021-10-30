var app=new Vue({

    el : '#app',
    data:  {

      experiences: [],
      formations:[],
      competences:[],
      projets:[],
      open: {

        experience:false,
        formation:false,
        competence:false,
        projet:false,

      },
      experience: {
        id: 0,
        cv_id: window.Laravel.idExperience,
        titre: "",
        body: "",
        debut: "",
        fin: ""
      },
      formation: {
        id: 0,
        cv_id: window.Laravel.idExperience,
        titre: "",
        description: "",
        debut: "",
        fin: ""
      },
      competence: {
        id: 0,
        cv_id: window.Laravel.idExperience,
        titre: "",
        description: "",

      },
      projet: {
        id: 0,
        cv_id: window.Laravel.idExperience,
        titre: "",
        description: "",
        lien:"",
        image:""
      },
      edit:{

        experience:false,
        formation:false,
        competence:false,
        projet:false,

      },

    },
    methods: {
      getData: function(){
        axios.get(window.Laravel.url+'/getdata/'+window.Laravel.idExperience)
        .then(response => {
          console.log(response.data);
          this.experiences = response.data.experiences;
          this.formations = response.data.formations;
          this.competences = response.data.competences;
          this.projets = response.data.projets;
        })
        .catch(error =>{
          console.log('errors:', error);
        })
      },
      addExperience: function(){
        axios.post(window.Laravel.url+'/addexperience', this.experience)
              .then (response=> {
          if (response.data.etat) {
            this.open.experience =false;
            this.experience.id= response.data.id;
            this.experiences.unshift(this.experience);

            this.experience= {



        id: 0,
        cv_id: window.Laravel.idExperience,
        titre: "",
        body: "",
        debut: "",
        fin: ""
      };

          }
        })
        .catch (error=> {
          console.log(error);
        })
      },
       editExperience: function(experience){
      this.open.experience = true;
      this.edit.experience = true;
      this.experience=experience;
    },
    updateExperience: function(){
      axios.put(window.Laravel.url+'/updateexperience', this.experience)
              .then (response=> {
          if (response.data.etat) {
            this.open.experience =false;


            this.experience= {



        id: 0,
        cv_id: window.Laravel.idExperience,
        titre: "",
        body: "",
        debut: "",
        fin: ""
      };

          }
          this.edit.experience=false;
        })
        .catch (error=> {
          console.log(error);
        })
    },
    deleteExperience: function(experience){


      Swal.fire({
  title: 'Êtes-vous sûr?',
  text: "Vous ne pourrez pas revenir en arrière!",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Oui, supprimez-le!'
}).then((result) => {

  if (result.value) {
    axios.delete(window.Laravel.url+'/deleteexperience/'+experience.id)
              .then (response=> {

          if (response.data.etat) {

            var position =this.experiences.indexOf(experience);
            this.experiences.splice(position, 1);

          }

        })
        .catch (error=> {
          console.log(error);
        })
    Swal.fire(
      'Effacé!',
      'Votre fichier a été supprimé.',
      'success'
    )
  }
})



    },
    //Projets
    addProjet: function(){
        axios.post(window.Laravel.url+'/addprojet', this.projet)
              .then (response=> {
          if (response.data.etat) {
            this.open.projet =false;
            this.projet.id= response.data.id;
            this.projets.unshift(this.projet);

            this.projet= {



        id: 0,
        cv_id: window.Laravel.idExperience,
        titre: "",
        body: "",
        debut: "",
        fin: ""
      };

          }
        })
        .catch (error=> {
          console.log(error);
        })
      },
       editProjet: function(projet){
      this.open.projet = true;
      this.edit.projet = true;
      this.projet=projet;
    },
    updateProjet: function(){
      axios.put(window.Laravel.url+'/updateprojet', this.projet)
              .then (response=> {
          if (response.data.etat) {
            this.open.projet =false;


            this.projet= {



        id: 0,
        cv_id: window.Laravel.idExperience,
        titre: "",
        body: "",
        debut: "",
        fin: ""
      };

          }
          this.edit.projet=false;
        })
        .catch (error=> {
          console.log(error);
        })
    },
    deleteProjet: function(projet){


      Swal.fire({
  title: 'Êtes-vous sûr?',
  text: "Vous ne pourrez pas revenir en arrière!",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Oui, supprimez-le!'
}).then((result) => {

  if (result.value) {
    axios.delete(window.Laravel.url+'/deleteprojet/'+projet.id)
              .then (response=> {

          if (response.data.etat) {

            var position =this.projets.indexOf(projet);
            this.projets.splice(position, 1);

          }

        })
        .catch (error=> {
          console.log(error);
        })
    Swal.fire(
      'Effacé!',
      'Votre fichier a été supprimé.',
      'success'
    )
  }
})



    },
    //competence
    addCompetence: function(){
        axios.post(window.Laravel.url+'/addcompetence', this.competence)
              .then (response=> {
          if (response.data.etat) {
            this.open.competence =false;
            this.competence.id= response.data.id;
            this.competences.unshift(this.competence);

            this.competence= {



        id: 0,
        cv_id: window.Laravel.idExperience,
        titre: "",
        body: "",
        debut: "",
        fin: ""
      };

          }
        })
        .catch (error=> {
          console.log(error);
        })
      },
       editCompetence: function(competence){
      this.open.competence = true;
      this.edit.competence = true;
      this.competence=competence;
    },
    updateCompetence: function(){
      axios.put(window.Laravel.url+'/updatecompetence', this.competence)
              .then (response=> {
          if (response.data.etat) {
            this.open.competence =false;


            this.competence= {



        id: 0,
        cv_id: window.Laravel.idExperience,
        titre: "",
        body: "",
        debut: "",
        fin: ""
      };

          }
          this.edit.competence=false;
        })
        .catch (error=> {
          console.log(error);
        })
    },
    deleteCompetence: function(competence){


      Swal.fire({
  title: 'Êtes-vous sûr?',
  text: "Vous ne pourrez pas revenir en arrière!",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Oui, supprimez-le!'
}).then((result) => {

  if (result.value) {
    axios.delete(window.Laravel.url+'/deletecompetence/'+competence.id)
              .then (response=> {

          if (response.data.etat) {

            var position =this.competences.indexOf(competence);
            this.competences.splice(position, 1);

          }

        })
        .catch (error=> {
          console.log(error);
        })
    Swal.fire(
      'Effacé!',
      'Votre fichier a été supprimé.',
      'success'
    )
  }
})



    },
    //Formation
    addFormation: function(){
        axios.post(window.Laravel.url+'/addformation', this.formation)
              .then (response=> {
          if (response.data.etat) {
            this.open.formation =false;
            this.formation.id= response.data.id;
            this.formations.unshift(this.formation);

            this.formation= {



        id: 0,
        cv_id: window.Laravel.idExperience,
        titre: "",
        body: "",
        debut: "",
        fin: ""
      };

          }
        })
        .catch (error=> {
          console.log(error);
        })
      },
       editFormation: function(formation){
      this.open.formation = true;
      this.edit.formation = true;
      this.formation=formation;
    },
    updateFormation: function(){
      axios.put(window.Laravel.url+'/updateformation', this.formation)
              .then (response=> {
          if (response.data.etat) {
            this.open.formation =false;


            this.formation= {



        id: 0,
        cv_id: window.Laravel.idExperience,
        titre: "",
        body: "",
        debut: "",
        fin: ""
      };

          }
          this.edit.formation=false;
        })
        .catch (error=> {
          console.log(error);
        })
    },
    deleteFormation: function(formation){


      Swal.fire({
  title: 'Êtes-vous sûr?',
  text: "Vous ne pourrez pas revenir en arrière!",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Oui, supprimez-le!'
}).then((result) => {

  if (result.value) {
    axios.delete(window.Laravel.url+'/deleteformation/'+formation.id)
              .then (response=> {

          if (response.data.etat) {

            var position =this.formations.indexOf(formation);
            this.formations.splice(position, 1);

          }

        })
        .catch (error=> {
          console.log(error);
        })
    Swal.fire(
      'Effacé!',
      'Votre fichier a été supprimé.',
      'success'
    )
  }
})



    }

    },

    created:function(){
      this.getData();
    }

  });
