import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2-multiple').select2({
    placeholder: "Select languages you want to improve"
  });
};

export { initSelect2 };


$('#js-example-basic-hide-search-multi').select2();

$('#js-example-basic-hide-search-multi').on('select2:opening select2:closing', function( event ) {
    var $searchfield = $(this).parent().find('.select2-search__field');
    $searchfield.prop('disabled', true);
});

function matchCustom(params, data) {
    // If there are no search terms, return all of the data
    if ($.trim(params.term) === '') {
      return data;
    }

    // Do not display the item if there is no 'text' property
    if (typeof data.text === 'undefined') {
      return null;
    }

    // `params.term` should be the term that is used for searching
    // `data.text` is the text that is displayed for the data object
    if (data.text.indexOf(params.term) > -1) {
      var modifiedData = $.extend({}, data, true);
      modifiedData.text += ' (matched)';

      // You can return modified objects from here
      // This includes matching the `children` how you want in nested data sets
      return modifiedData;
    }

    // Return `null` if the term should not be displayed
    return null;
}

$(".js-example-matcher").select2({
  matcher: matchCustom
});

// $(".js-example-placeholder-multiple").select2({
//     placeholder: "Select languages you want to improve"
// });

//stock the datas in cash

// $(document).ready(function () {
//         $('#select').select2({
//             // this part is responsible for data caching
//             dataCache: [],
//             query: function (q) {
//                 var obj = this,
//                         key = q.term,
//                         dataCache = obj.dataCache[key];

//                 //checking is result in cache
//                 if (dataCache) {
//                     q.callback({results: dataCache.results});
//                 } else {
//                     $.ajax({
//                         url: 'ajax.php',
//                         data: {q: q.term},
//                         dataType: 'json',
//                         type: 'POST',
//                         success: function (data) {
//                             //copy data to 'cache'
//                             obj.dataCache[key] = data;
//                             q.callback({results: data.results});
//                         }
//                     })
//                 }
//             }
//           })
//         };




















