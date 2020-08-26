import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2();
};

export { initSelect2 };


$('#js-example-basic-hide-search-multi').select2();

$('#js-example-basic-hide-search-multi').on('select2:opening select2:closing', function( event ) {
    var $searchfield = $(this).parent().find('.select2-search__field');
    $searchfield.prop('disabled', true);
});

