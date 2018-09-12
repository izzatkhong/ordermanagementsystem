<!DOCTYPE html>
<html>
<head>
    <style>
    body {
        background: #404040 !important;
        padding: 30px;
    }

    .crud-form {
        margin-top: 25px;
    }

    .gc-container .scroll-if-required {
        padding-bottom: 0 !important;
    }   

    .gc-container .table-container {
        background: #f7f7f7;
    }

    .gc-container .table-label {
        padding: 20px;
    }

    .table-label {
        background: #007bff !important;
        color: #fff;
    }

    .gc-container .header-tools {
        padding: 10px 10px 10px 10px !important;
    }

    .gc-container .footer-tools {
        padding: 10px 10px 10px 10px !important;
    }

    .oms-header {
        margin: 30px auto 0;
        padding: 10px;
        color: #fff;
    }

    .pagination {
        margin-top: 20px !important;
    }

    .btn-secondary {
    color: #007bff;
    background-color: #007bff;
    border-color: #007bff;
    }

    .readonly_label {
        margin-top: 8px;
    }

    .read-row {
    margin-top: 0px !important;
    }

    .dropdown-menu {
    left: -98% !important;
    }

    </style>

	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

<?php 
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
</head>
<body>
	<h1 class="oms-header">ORDER MANAGEMENT SYSTEM</h1>
    <div style="padding: 10px">
		<?php echo $output; ?>
    </div>
    <?php foreach($js_files as $file): ?>
        <script src="<?php echo $file; ?>"></script>
    <?php endforeach; ?>
</body>
</html>
