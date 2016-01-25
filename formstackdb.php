<?php
require_once("C:/inetpub/wwwroot/phpGrid/conf.php");      
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Fomrstack Database</title>
</head>
<body>
          
<img src="http://54.84.139.183/formstackdb/images/InhouzLogo.jpg" alt="InHouzLogo.jpg" style="width:195px;height:78px;">

<?php
// Always the first line in the grid section
$dg = new C_DataGrid("SELECT * FROM formstack", "pk", "formstack");

// change default caption
$dg -> set_caption("Orders List");

// change column titles
$dg -> set_col_title("pk", "Row No.");
$dg -> set_col_title("OrderNumber", "Order Number");
$dg -> set_col_title("DateTime", "Date Time");
$dg -> set_col_title("FirstName", "First Name");
$dg -> set_col_title("LastName", "Last Name");
$dg -> set_col_title("Address1",  "Address 1");
$dg -> set_col_title("Address2",  "Address 2");
$dg -> set_col_title("AddressCity",  "City");
$dg -> set_col_title("AddressState",  "State");
$dg -> set_col_title("AddressZip",  "Zip");
$dg -> set_col_align('email', 'EMail');
$dg -> set_col_title("InstallerRating",  "Installer Rating");
$dg -> set_col_title("InstallType",  "Install Type");
$dg -> set_col_title("THDStoreNumber",  "THD Store #");
$dg -> set_col_title("FormstackImage1",  "Image 1");
$dg -> set_col_title("FormstackImage2",  "Image 2");
$dg -> set_col_title("FormstackImage3",  "Image 3");
$dg -> set_col_title("FormstackImage4",  "Image 4");
$dg -> set_col_title("FormstackImage5",  "Image 5");
$dg -> set_col_title("FormstackImage6",  "Image 6");
$dg -> set_col_title("FormstackImage7",  "Image 7");
$dg -> set_col_title("BeforeAfter1",  "Upload 1");
$dg -> set_col_title("BeforeAfter2",  "Upload 2");
$dg -> set_col_title("BeforeAfter3",  "Upload 3");
$dg -> set_col_title("BeforeAfter4",  "Upload 4");


// Set Column to image type
$dg -> set_col_img("FormstackImage1");
$dg -> set_col_img("FormstackImage2");
$dg -> set_col_img("FormstackImage3");
$dg -> set_col_img("FormstackImage4");
$dg -> set_col_img("FormstackImage5");
$dg -> set_col_img("FormstackImage6");
$dg -> set_col_img("FormstackImage7");
$dg -> set_col_img("BeforeAfter1");
/*
$dg -> set_col_img("BeforeAfter2");
$dg -> set_col_img("BeforeAfter3");
$dg -> set_col_img("BeforeAfter4");
*/

// Set column Alignments
$dg -> set_col_align('pk', 'center');
$dg -> set_col_align('OrderNumber', 'center');
$dg -> set_col_align('DateTime', 'center');
$dg -> set_col_align('FirstName', 'center');
$dg -> set_col_align('LastName', 'center');
$dg -> set_col_align('Address1', 'center');
$dg -> set_col_align('Address2', 'center');
$dg -> set_col_align('AddressCity', 'center');
$dg -> set_col_align('AddressState', 'center');
$dg -> set_col_align('AddressZip', 'center');
$dg -> set_col_align('Country', 'center');
$dg -> set_col_align('email', 'center');
$dg -> set_col_align('THDStoreNumber', 'center');
$dg -> set_col_align('InstallerRating', 'center');
$dg -> set_col_align('InstallType', 'center');
$dg -> set_col_align('NeedWant', 'center');
$dg -> set_col_align('DoorType', 'center');
$dg -> set_col_align('AddReplace', 'center');
$dg -> set_col_align('GlassType', 'center');
$dg -> set_col_align('Model', 'center');
$dg -> set_col_align('DoorConstruction', 'center');


// Fill contents of drop down filters for enumerated columns 
$dg -> set_col_edittype("pk", "text");
$dg -> set_col_edittype("AddressState", "select", "select distinct AddressState, AddressState from formstack", false);
$dg -> set_col_edittype("Country", "select", "USA:USA;Canada:Canada", false);
$dg -> set_col_edittype("InstallerRating", "select", "select distinct InstallerRating, InstallerRating from formstack", false);
$dg -> set_col_edittype("InstallType", "select", "Glass:Glass;Screen:Screen;Lock:Lock;Tube:Tube;Interior Door:Interior Door;Storm Door:Storm Door", false);
$dg -> set_col_edittype("NeedWant", "select", "Want:Want;Need:Need;", false);
$dg -> set_col_edittype("DoorType", "select", "Front:Front;Back:Back;Side:Side", false);
$dg -> set_col_edittype("AddReplace", "select", "Add:Add;Replace:Replace", false);
$dg -> set_col_edittype("GlassType", "select", "Deco:Deco;Blind:Blind;Clear:Clear", false);
$dg -> set_col_edittype("Model", "text");
$dg -> set_col_edittype("DoorConstruction", "select", "Steel:Steel;Fiberglass:Fiberglass;Wood:Wood;Slider:Slider", false);
$dg -> set_col_edittype("THDStoreNumber", "text");
$dg -> set_col_edittype("FormstackImage1", "disabled");
$dg -> set_col_edittype("FormstackImage2", "disabled");
$dg -> set_col_edittype("FormstackImage3", "disabled");
$dg -> set_col_edittype("FormstackImage4", "disabled");
$dg -> set_col_edittype("FormstackImage5", "disabled");
$dg -> set_col_edittype("FormstackImage6", "disabled");
$dg -> set_col_edittype("FormstackImage7", "disabled");
$dg -> set_col_edittype("BeforeAfter1", "disabled");
$dg -> set_col_edittype("BeforeAfter2", "disabled");
$dg -> set_col_edittype("BeforeAfter3", "disabled");
$dg -> set_col_edittype("BeforeAfter4", "disabled");
$dg -> set_col_edittype("Comments", "textarea");
$dg -> set_col_edittype("Comments2", "textarea");

// Set image fields to read only.
$dg -> set_col_readonly("pk, FormstackImage1, FormstackImage2, FormstackImage3, FormstackImage4");

// Set data edit form layout and dimensions
$dg -> set_col_property("pk", array("formoptions"=>array("rowpos"=>1,"colpos"=>1)));
$dg -> set_col_property("OrderNumber", array("formoptions"=>array("rowpos"=>1,"colpos"=>2)));
$dg -> set_col_property("DateTime", array("formoptions"=>array("rowpos"=>1,"colpos"=>3)));
$dg -> set_col_property("FirstName", array("formoptions"=>array("rowpos"=>2,"colpos"=>1)));
$dg -> set_col_property("LastName", array("formoptions"=>array("rowpos"=>2,"colpos"=>2)));
$dg -> set_col_property("email", array("formoptions"=>array("rowpos"=>2,"colpos"=>3)));
$dg -> set_col_property("Address1", array("formoptions"=>array("rowpos"=>3,"colpos"=>1)));
$dg -> set_col_property("Address2", array("formoptions"=>array("rowpos"=>3,"colpos"=>2)));
$dg -> set_col_property("AddressCity", array("formoptions"=>array("rowpos"=>4,"colpos"=>1)));
$dg -> set_col_property("AddressState", array("formoptions"=>array("rowpos"=>4,"colpos"=>2)));
$dg -> set_col_property("AddressZip", array("formoptions"=>array("rowpos"=>4,"colpos"=>3)));
$dg -> set_col_property("Country", array("formoptions"=>array("rowpos"=>4,"colpos"=>4)));
$dg -> set_col_property("InstallerRating", array("formoptions"=>array("rowpos"=>5,"colpos"=>1)));
$dg -> set_col_property("DoorConstruction", array("formoptions"=>array("rowpos"=>5,"colpos"=>2)));

$dg -> set_col_property("THDStoreNumber", array("formoptions"=>array("rowpos"=>7,"colpos"=>1)));

$dg -> set_col_property("InstallType", array("formoptions"=>array("rowpos"=>5,"colpos"=>3)));
$dg -> set_col_property("NeedWant", array("formoptions"=>array("rowpos"=>5,"colpos"=>4)));
$dg -> set_col_property("DoorType", array("formoptions"=>array("rowpos"=>6,"colpos"=>1)));
$dg -> set_col_property("AddReplace", array("formoptions"=>array("rowpos"=>6,"colpos"=>2)));
$dg -> set_col_property("GlassType", array("formoptions"=>array("rowpos"=>6,"colpos"=>3)));
$dg -> set_col_property("Model", array("formoptions"=>array("rowpos"=>6,"colpos"=>4)));
$dg -> set_col_property("Comments", array("formoptions"=>array("rowpos"=>8,"colpos"=>1)));
$dg -> set_col_property("Comments", array("editoptions"=>array("style"=>"width:95%;")));
$dg -> set_col_property("BeforeAfter1", array("formoptions"=>array("rowpos"=>9,"colpos"=>1)));
$dg -> set_col_property("BeforeAfter2", array("formoptions"=>array("rowpos"=>10,"colpos"=>1)));
$dg -> set_col_property("BeforeAfter3", array("formoptions"=>array("rowpos"=>11,"colpos"=>1)));
$dg -> set_col_property("BeforeAfter4", array("formoptions"=>array("rowpos"=>12,"colpos"=>1)));
$dg -> set_col_property("Comments2", array("formoptions"=>array("rowpos"=>13,"colpos"=>1)));
$dg -> set_col_property("Comments2", array("editoptions"=>array("style"=>"width:95%;")));
$dg -> set_col_property("FormstackImage1", array("formoptions"=>array("rowpos"=>14,"colpos"=>1)));
$dg -> set_col_property("FormstackImage2", array("formoptions"=>array("rowpos"=>14,"colpos"=>2)));
$dg -> set_col_property("FormstackImage3", array("formoptions"=>array("rowpos"=>14,"colpos"=>3)));
$dg -> set_col_property("FormstackImage4", array("formoptions"=>array("rowpos"=>14,"colpos"=>4)));
$dg -> set_col_property("FormstackImage5", array("formoptions"=>array("rowpos"=>15,"colpos"=>1)));
$dg -> set_col_property("FormstackImage6", array("formoptions"=>array("rowpos"=>15,"colpos"=>2)));
$dg -> set_col_property("FormstackImage7", array("formoptions"=>array("rowpos"=>16,"colpos"=>3)));


// File upload section
$dg -> set_col_fileupload("BeforeAfter1", "/formstackdb/images/", "C:\\inetpub\\wwwroot\\formstackdb\\");
/*
$dg -> set_col_fileupload("BeforeAfter2", "/formstackdb/images/", "C:\\inetpub\\wwwroot\\formstackdb\\");
$dg -> set_col_fileupload("BeforeAfter3", "/formstackdb/images/", "C:\\inetpub\\wwwroot\\formstackdb\\");
$dg -> set_col_fileupload("BeforeAfter4", "/formstackdb/images/", "C:\\inetpub\\wwwroot\\formstackdb\\");
*/

// enable integrated search
$dg -> enable_search(true);

// enable inline editing
$dg -> enable_edit("FORM", "CRUD");
$dg -> set_form_dimension(1200, 700);


// set export type
$dg -> enable_export('EXCEL');
// $dg -> enable_export('CSV');

// Page Size
$dg -> set_pagesize(15);
$dg -> enable_resize(true); 
// $dg -> enable_autowidth(true);
$dg -> enable_autoheight(true);
// $dg -> set_scroll(true);
$dg -> enable_kb_nav(true); // beta.  be careful


// Set grid colors & theme
$dg -> set_theme('cobalt');
// $dg -> set_row_color('#BDE7F2', 'lightblue', '#DDE8F5');

// always the last line in the grid section.
$dg -> display();

?>

<script type="text/javascript">
    $(function() {
        var grid = jQuery("#formstack");
        grid[0].toggleToolbar();
    });
</script>

<style>
    /* resize displayed images */
    .ui-jqgrid tr.jqgrow td img{
        width:250px;
        // height:100px;
        // transform: rotate(90deg);
        border: 3px gray solid;
        box-shadow: 2px 2px 3px #888888;
        border-radius:5px;
				}	;	
        
    /* added by WTS 12/28/2015 not tested as of that date */
    /* center edit form */
    .ui-jqdialog {
        display: none;
        position: absolute;
        left: 30% !important;
        top: 30% !important;
        padding: .2em;
        overflow: visible;
    }



    
</style>

    
</body>
</html>




