// customdatatables.js
//import $ from 'jquery'
import jquery from "jquery";

window.jQuery = jquery;

window.$ = jquery;

import DataTable from 'datatables.net-dt';

new DataTable('#users-datatable', {
    "processing": true,
    "serverSide": true,
    "ajax": {
        //"url": usersDatatable.data('source')
    },
    "pagingType": "full_numbers",
    "columns": [
        {"data": "id"},
        {"data": "email"},

    ]
    // pagingType is optional, if you want full pagination controls.
    // Check dataTables documentation to learn more about
    // available options.
});


new DataTable('#products-datatables', {
    "processing": true,
    "serverSide": true,
    "ajax": {
        //"url": usersDatatable.data('source')
    },
    "pagingType": "full_numbers",
    "columns": [
        {"data": "id"},
        {"data": "name"},
        {"data": "price"},
        {"data": "quantity"},
    ]
    // pagingType is optional, if you want full pagination controls.
    // Check dataTables documentation to learn more about
    // available options.
});
