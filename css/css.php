<style>
    .loginbodybg {
        background: url("./images/loginbackground.png") center center /cover;
    }

    a {
        text-wrap: nowrap;
    }

    .table-width {

        & th {
            width: 17%;
        }

        & .nmuber {
            width: 100px;
        }
    }

    input:-webkit-autofill,
    input:-webkit-autofill:hover,
    input:-webkit-autofill:focus,
    input:-webkit-autofill:active {
        -webkit-transition-delay: 111111s;
        -webkit-transition: color 11111s ease-out, background-color 111111s ease-out;
    }

    input[type=checkbox] {
        display: inline-block;
        background-color: #aaa;
        padding: 3px 6px;
        border: 1px solid gray;
        color: #444;
        user-select: none;
        /* 防止文字被滑鼠選取反白 */
    }

    input[type=checkbox]:checked {
        color: yellow;
        background-color: #444;
    }

    table.dataTable thead th,
    table.dataTable thead td {
        border-bottom: 0;
        border-top: 0;
    }

    table.dataTable tfoot th,
    table.dataTable tfoot td {
        border-top: 0;
    }

    table.dataTable tbody tr,
    table.dataTable tbody td {
        background: transparent !important;
    }

    table.dataTable thead th {
        color: #454545;
        font-weight: 600;
    }

    [data-theme-version="dark"] table.dataTable thead th {
        color: #fff;
    }

    table.dataTable tbody td {
        /* padding: 15px 18px; */
    }

    table.dataTable tr.selected {
        color: #593bdb;
    }

    table.dataTable tfoot th {
        color: #454545;
        font-weight: 600;
    }

    [data-theme-version="dark"] table.dataTable tfoot th {
        color: #fff;
    }

    table.dataTable.no-footer {
        border-bottom: 0;
    }

    table.dataTable.row-border tbody th,
    table.dataTable.row-border tbody td,
    table.dataTable.display tbody th,
    table.dataTable.display tbody td {
        border-color: #eaeaea;
    }

    [data-theme-version="dark"] table.dataTable.row-border tbody th,
    [data-theme-version="dark"] table.dataTable.row-border tbody td,
    [data-theme-version="dark"] table.dataTable.display tbody th,
    [data-theme-version="dark"] table.dataTable.display tbody td {
        border-color: #424D63;
    }

    .dataTables_wrapper .dataTables_paginate .paginate_button.current {
        border-radius: 50%;
        color: #593bdb !important;
        background: rgba(89, 59, 219, 0.1);
        border: 0 !important;
    }

    .dataTables_wrapper .dataTables_paginate .paginate_button:hover {
        border-radius: 50%;
        color: #593bdb !important;
        background: rgba(89, 59, 219, 0.1);
        border: 0;
    }

    .dataTables_wrapper .dataTables_paginate .paginate_button {
        border: 0;
    }

    .dataTables_wrapper .dataTables_paginate .paginate_button.previous:hover {
        background: transparent;
    }

    .dataTables_wrapper .dataTables_paginate .paginate_button.next:hover {
        background: transparent;
    }

    .dataTables_wrapper input[type="search"],
    .dataTables_wrapper input[type="text"],
    .dataTables_wrapper select {
        border: 1px solid #e2e2e2;
        padding: .3rem 0.5rem;
        color: #715d5d;
        border-radius: 5px;
    }

    [data-theme-version="dark"] .dataTables_wrapper input[type="search"],
    [data-theme-version="dark"] .dataTables_wrapper input[type="text"],
    [data-theme-version="dark"] .dataTables_wrapper select {
        background: #2A2C32;
        border-color: #424D63;
        color: #fff;
    }
</style>