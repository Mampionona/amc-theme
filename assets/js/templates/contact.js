$(function() {
  $(document).on('click', '.ajouter-fichier', () => (
    $('.wpcf7 :file').trigger('click')
  ));
});
