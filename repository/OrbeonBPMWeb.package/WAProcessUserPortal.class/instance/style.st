style
style

^'/* Smart Devices*/
@media (max-width: 800px) {                  
   .smart-hide-width {
      display: none !important;
   }
}
@media (max-height: 450px) {                  
   .smart-hide-height {
      display: none !important;
   }
}
/* NEW CSS - REFACTORIZED */
/* START: HTML GENERAL */
body, html, main {
	margin: 0;
	width: 100%;
	height: 100%;
	overflow-y: hidden;
	background-color: #BCBCBC;
}
#screen-all {
	height: 100%;
}
/* END: HTML GENERAL */
/* START: TOP AREA */
#top-area {
	display: inline-flex;
	width: 100%;
	background-color: gray;
	padding-top: 2px;
}
#top-app-icon-area {
	display: inline-flex;
	padding-left: 10px;
	width: 20%;
}
#top-app-icon-area h1{
	margin-top: 5px;
	color: gainsboro;
}
#top-app-name {
	font-size: 30px;
	color: gainsboro;
}
#top-app-version-name {
	font-size: 14px;
}
#top-logout a {
	text-decoration: none;
}
#top-logout output {
	font-size: 90%;
}
#top-menu-area {
	width: 80%;
	margin-top: 5px;
}
.top-menu-item {
	float: left;
	margin-left: 5%;
}
.top-menu-item a {
	color: white;
	text-decoration: none;
}
.top-menu-item a output {
	font-size: 120%;
}
.top-menu-item img {
	display: block;
	margin-left: auto;
	margin-right: auto;
}
.top-menu-item-triangle {
	border-style: solid;
	border-width: 0px 10px 10px;
	border-color: transparent transparent #D3D3D3;
	color: #FFF;
	width: 0px;
	height: 0px;
	margin-left: auto;
	margin-right: auto;
}
#top-submenu-area {
	height: 40px;
	background-color: lightgray;
}
.top-area-close-icon {
	float: right;
	margin-top: 3px;
	margin-right: 5px;
}
.top-sub-item-selected output {
	font-family: Times New Roman;
	font-size: 20px;
	color: rgb(64, 64, 64);
}
.top-sub-item-selected a, .top-sub-item-unselected a {
	text-decoration: none;
}
.top-sub-item-selected, .top-sub-item-unselected {
	float: left;
	padding-top: 10px;
	margin-left: 10px;
	margin-right: 30px;
}
.top-sub-item-unselected output {
	font-family: Times New Roman;
	font-size: 20px;
	color: #808080;
}
.top-sub-item-selected, .top-sub-item-unselected output:hover {
	color: rgb(64, 64, 64);
}
/* END: TOP AREA */
/* START: BOTTOM AREA */
/* END: BOTTOM AREA */
/* START: COMPONENT AREA */
#component-area {
	background-color: #BCBCBC;
	height: 100%;
}
#component-area hr {
	margin-top: 0px;
	margin-bottom: 0px;
}
/*START: SEARCH AREA*/
#top-search-area {
	width: 100%;
	display: inline-flex;
}
.top-search-area-box-shadow {
	box-shadow: 2px 2px 2px 0px rgba(11, 10, 10, 0.8);
}
#top-search-show-hide-area {
	display: inline-flex;	
}
#top-search-switch-icon {
	display: inline-flex;
	float: right;
	margin-top: -25px;
}
#top-search-area form {
	width: 100%;
}
#top-search-area form fieldset {
	border-radius: 6px;
	margin-bottom: 0px;
	padding-bottom: 5px;
	border: none;
}
#top-search-area form fieldset label {
	margin-right: 10px;
}
#top-search-area form fieldset input[type="text"], 
#top-search-area form fieldset select {
	border-radius: 6px;
	margin-right: 20px;
	border-color: darkgray;
	width: 100%;
}
.top-search-div {
	float: left;
	width: 200px;
	margin-right: 15px;
}
.top-search-legend {
	font-weight: bold;
	text-decoration: underline;
}
#top-search-filters-one {
	display: inline-block;
	width: 200px;
	margin-top: -5px;
}
#top-search-filters-two {
	display: inline-block;
	width: 200px;
	margin-top: -15px;
}
#top-search-filters-one input {
	border-radius: 6px;
	margin-right: 20px;
	border-color: #A9A9A9;
}
#top-search-filters-two input {
	border-radius: 6px;
	margin-right: 20px;
	border-color: #A9A9A9;
}
.top-search-vertical-line {
	width: 8px;
	background-color: lightgray;
	float: left;
	margin-right: 10px;
}
/*END: SEARCH AREA*/
/*START: INNER COMPONENTS*/
.artifact-definition {
    padding: 5px 15px 15px;
    float: left;
    margin: 10px;
    border-radius: 10px;
    background-color: #868686;
    width: 20%;
    height: 20%;
    overflow-y: auto;
}
#artifact-definitions {
    display: inline-block;
	width: 100%;
}
.category-circle {
	width: 20px;
	height: 20px;
	border-radius: 10px;
	float: left;
	margin-bottom: 3px;
	margin-left: 2px;
	text-align: center;
}
.category-label {
	float: right;
	text-decoration: none;
	color: white;
	border-radius: 10px;
	padding-left: 5px;
	padding-right: 5px;
	margin-left: 5px;
	margin-right: 5px;
}
.centered-forms {
	margin-left: 1%;
	margin-right: 2%;
	margin-top: 1%;
}
.centered-forms-width38 {
	width: 38%;
}
.centered-forms form { 
	border-radius: 10px;
	border-style: inset;
	background-color: #7A7557;
	padding: 5px;
	border-width: 2px;
	width: 100%;
}
.centered-forms form fieldset {
	border: none;
} 
.centered-forms form input[type="text"]{ 
	border-radius: 10px;
	border-style: inset;
	width: 350px;
	margin-bottom: 5px;
}
.centered-forms form input[type="submit"] { 
	border-radius: 10px;
	width: 150px;
	border-right: 10px;
	margin-left: 3%;
	margin-right: 3%;
	margin-top: 1%;
}
.centered-forms form input[type="file"] { 
	border-radius: 10px;
	width: 400px;
	border-right: 10px;
	margin-top: 10px;
	margin-bottom: 5px;
}
.centered-forms form label { 
	display: block;
	margin-top: 10px;
}
.centered-forms form select { 
	border-radius: 10px;
	border-style: inset;
	display: block;
	width: 350px;
	margin-bottom: 10px;
}
.centered-forms form p { 
	margin-top: 10px;
	font-size: 20px;
	font-style: italic;
	text-align: right;
}
.centered-forms legend {
	text-align: center;
	font-size: 20px;
	color: black;
}
.centered-forms output {
	text-align: center;
	font-size: 16px;
	color: #EADDDD;
}
.centered-forms ul {
	border-radius: 15%;
	background-color: #F5F5DC;
}
.free-selected-process {
	float: right;
}
#free-tasks-list {
	overflow-y: auto;
	height: 625px;
}
#free-tasks-list ul {
	list-style-type: none;
	margin-top: 0px;
}
#granted-transitions {
	width: 60%;
	margin-left: auto;
	margin-right: auto;
}
.hide-lateral-left-list {
	float: left;
}
.inform-box {
	padding: 10px;
	border-radius: 10px;
	border: 1px solid;
	color: rgb(205, 10, 10);
	background-color: rgb(254, 241, 236);
	margin-top: 10px;
	margin-left: 15px;
	margin-bottom: 15px;
	width: inherit;
	margin-right: 20px;
}
#item-customized-component {
	overflow-y: scroll;
	height: 60%;
}
.lateral-left-list {
	width: 19.5%;
	display: inline-block;
	height: 100%;
	font-size: 90%;
	box-shadow: 2px 2px 2px 0px rgba(11, 10, 10, 0.8) inset;
}
.lateral-left-list ul {
	list-style-type: none;
	padding-left: 2px;
}
.lateral-left-list a {
	text-decoration: none;
	color: black;
}  
.lateral-left-list ul li {
	margin-bottom: 10px;
}
.lateral-left-list-icon {
	width: 32px;
	float: left;
	padding-left: 5px;
	padding-top: 5px;
}
.lateral-left-list-item-selected {
	background-color: beige;
	border-radius: 10px;
	padding-left: 10px;
}
.lateral-left-list-item-unselected {
}
.lateral-left-list-item-summary-data {
	display: inline-block;
	color: rgb(37, 46, 146);
}
.lateral-left-list-item-summary-data output {
	display: block;
	margin-left: auto;
	margin-right: auto;
}
.lateral-left-list-item-title-selected {
	font-size: 150%;
}
.lateral-left-list-item-title-unselected {
	font-size: 150%;
}
.lateral-right-component-additional-data {
	text-align: center;
}
.lateral-right-component-additional-data span {
	font-style: italic;
	margin-right: 5px;
	margin-left: 15px;
	color: #8A8A59;
}
.lateral-right-component-additional-data output {
	color: darkblue;
}
.lateral-right-component {
	height: 100%;
	float: right;
	background-color: #BCBCBC;
}
.lateral-right-component-description {
	background-color: #E4E49E;
	padding-bottom: 15px;
	margin-left: 2px;
    margin-top: 2px;
    margin-right: 2px;
}
.lateral-right-component-main-data {
	font-size: 150%;
	text-align: center;
	padding-top: 1px;
}
.lateral-right-component-main-data a {
	float: right;
}
.lateral-right-component-width80 {
	width: 80.5%;
}
.lateral-right-component-width100 {
	width: 100%;
}
.lateral-right-component-secondary-data {
	text-align: center;
}
.lateral-right-component-secondary-data span {
	font-style: italic;
	margin-right: 5px;
	margin-left: 15px;
	color: #8A8A59;
}
.lateral-right-component-secondary-data output {
	color: darkblue;
}
.list-lateral-element {
	width: 90%;
}
.list-lateral-element-custom {
	float: right;
	width: 10%;
}
.list-lateral-item {
	display: flex;
	margin-bottom: 5px;
	margin-top: 5px;
}
.monitor-list-icon {
	float: left;
	display: inline;
}
.monitor-list-icon-2 {
	float: right;
	display: inline;
}
.monitor-list-icon-height75 {
	height: 75px;
}
.monitor-list-icon-height90 {
	height: 110px;
}
.monitor-list-item-data {}
.monitor-list-item-data span {
	font-style: italic;
}
.monitor-list-item-data output {
	color: #231D81;
	margin-left: 10px;
	float: right;
}
.monitor-list-item-summary {
	display: inline-block;
    margin: 20px;
    padding: 20px;
    background-color: white;
    border-radius: 10px;
}
.monitor-list-item-summary span {
	font-style: italic;
}
.new-process-options {
    width: 50%;
    float: left;
}
#new-process-options-form {
	display: inline-flex;
}
#new-process-list  ul {
	list-style-type: none;
	margin-top: 0px;
}
#orbeon-form-frame {
	height: 400px;
} 
#orbeon-form {
	height: 100%;
}
#orbeon-form iframe {
	width: 100%;
	height: 100%;
}
#process-definition {
	height: 100%;
	box-shadow: 2px 2px 2px 0px rgba(11, 10, 10, 0.8) inset;
}
#process-assigment-transitions {
	margin-left: 10px;
	margin-top: 10px;
	overflow-y: auto;
	height: 440px;
}
.process-transition-icon-collapse {
	float: right;
}
.process-transition-finished {
	padding: 15px;
	padding-top: 5px;
	float: left;
	margin: 10px 10px 10px 10px;
	border-radius: 25px;
	background-color: #8CBD80;
	width: 28%;
	height: 60%;
	overflow-y: auto;
	box-shadow: 0px 0px 3px 0px rgba(11, 10, 10, 0.8);
}
.process-transition-gateway {
	padding: 15px;
	padding-top: 5px;
	float: left;
	margin: 10px 10px 10px 10px;
	border-radius: 25px;
	background-color: #ADADAD;
	width: 28%;
	height: 60%;
	overflow-y: auto;
}
.process-transition-running {
	padding: 15px;
	padding-top: 5px;
	float: left;
	margin: 10px 10px 10px 10px;
	border-radius: 25px;
	width: 28%;
	height: 60%;
	overflow-y: auto;
	background-color: #80A0BD;
	box-shadow: 0px 0px 3px 0px rgba(11, 10, 10, 0.8);
}
.process-transition-collapsed {
	height: 1%;
}
.process-transition-expanded {
	height: 60%;
}
.table-search-element form fieldset {
	border: 0px none;
}
.table-search-element form fieldset label {
	display: inherit;
	text-align: left;
	font-size: 80%;
}
.table-search-element form fieldset input[type="text"] {
	border-radius: 6px;
	margin-right: 2px;
}
.table-search-element form fieldset input[type="submit"] {
    margin-top: 0px;
}
.transition-data span {
	margin-right: 20px;
	font-style: italic;
	color: #565656;
    display: inline-table;
}
.transition-data output  {
	color: rgb(50, 51, 122);
	float: right;
}
.unique-centered-table {
	margin-left: auto;
	margin-right: auto;
	border: 2px solid #000;
	border-radius: 10px;
	margin-top: 30px;

}
.unique-centered-table-width30 {
	width: 30%;
}
.unique-centered-table-width70 {
	width: 70%;
}
.unique-centered-table  table {
	width: 100%;
}
.unique-centered-table fieldset {
	border: 0px none;
	margin-left: auto;
	margin-right: auto;
	width: 150px;
	margin-top: 20px;
}
.unique-centered-table fieldset  input {
	border-radius: 10px
}
.unique-wide-list-icon {
	width: 2.5%;
	float: left;
	display: inline;
}
.unique-wide-list-icon-height75 {
	height: 75px;
}
.unique-wide-list-icon-height90 {
	height: 110px;
}
.unique-wide-list-item-data {}
.unique-wide-list-item-data span {
	font-style: italic;
}
.unique-wide-list-item-data output {
	color: #231D81;
	margin-left: 10px;
}
.unique-wide-list-item-summary {}
.unique-wide-list-item-summary span {
	font-style: italic;
}
/*END: INNER COMPONENTS*/
/* END: COMPONENT AREA */
/*   ESTILES IN TEST   */
.batch {
	border-radius: 5px;
	padding: 5px;
	background: beige;
	margin-right: 2px;
	margin-left: 2px;
	display: inline-block;
    text-decoration: none;
    color: black;
}
.batch-div-bottom {
	margin-top: -8px;
	margin-left: 15px;
}
.batch-div-bottom-with-buttom {
	margin-top: -65px;
	margin-left: 25px;
}
.batch-div-lateral-top {
	margin-top: 10px;
	margin-bottom: -8px;
	margin-left: 5px;
}
.centered-unique-form {
	color: black;
	background-color: #BCBCBC;
	font-size: 18px;
	font-style: normal;
	border-radius: 5px;
	border: 1px solid #BCBCBC;
	border-width: 1px 1px 3px;
	margin-bottom: 10px;
	padding: 10px;
}
.centered-unique-form form {
	max-width: 350px;
	margin: 10px auto;
	padding: 10px 20px;
	background: #898a8a;
	border-radius: 8px;
}
.centered-unique-form fieldset {
	margin-bottom: 5px;
	border: none;
}
.centered-unique-form h1 {
	margin: 0 0 30px 0;
	text-align: center;
}
.centered-unique-form input[type="text"],
.centered-unique-form input[type="password"], 
.centered-unique-form input[type="date"],
.centered-unique-form input[type="datetime"], 
.centered-unique-form input[type="email"],
.centered-unique-form input[type="number"], 
.centered-unique-form input[type="search"],
.centered-unique-form input[type="tel"], 
.centered-unique-form input[type="time"],
.centered-unique-form input[type="url"], 
.centered-unique-form textarea, 
.centered-unique-form select {
	background: rgba(255,255,255,0.1);
	font-size: 16px;
	height: auto;
	margin: 0;
	outline: 0;
	width: 100%;
	background-color: white;
	color: black;
	box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
	margin-bottom: 10px;
}
.centered-unique-form input[type="radio"], 
.centered-unique-form input[type="checkbox"] {
	margin: 0 4px 8px 0;
}
.centered-unique-form select {
	padding: 6px;
	border-radius: 2px;
}
.centered-unique-form label {
	display: block;
	margin-bottom: 8px;
}
.centered-unique-form label.light {
	font-weight: 300;
	display: inline;
}
/* BASIC BLOCK STYLES */
.display-block {
	display: block;
}
.display-inline-block {
	display: inline-block;
}
.float-left {
	float: left;
}
.float-none {
	float: none;
}
.height180 {
	height: 180px;
}
.height250 {
	height: 250px;
}
.height300 {
	height: 300px;
}
.margin-left-5px {
	margin-left: 5px;
}
.margin-right-20per {
	margin-right: 20%;
}
.margin-top-20px {
	margin-top: 20px;
}
.margin-top-15px {
	margin-top: 15px;
}
.margin-top-10px {
	margin-top: 10px;
}
.margin-bottom-15px {
	margin-bottom: 15px;
}
.margin-bottom-10px {
	margin-bottom: 10px;
}
.underline {
	text-decoration: underline;
}
.no-underline {
	text-decoration: none;
}
.width-50per {
	width: 50%;
}
/* RIGHT LATERAL TABLE STYLES */
.default-gray-table table {
	color:black;
	font-size:18px;
	background:#898a8a;
	margin-top: 20px;
	margin-bottom: 10px;
	margin-left: 10px;
	margin-right: 20px;
	border:#ccc 1px solid;

	-moz-border-radius:3px;
	-webkit-border-radius:3px;
	border-radius:3px;

	-moz-box-shadow: 0 1px 2px #d1d1d1;
	-webkit-box-shadow: 0 1px 2px #d1d1d1;
	border-radius: 10px;
	padding-bottom: 2px;
	padding-left: 2px;
	padding-right: 2px;
}
.default-gray-table table a:link {
	color: #666;
	font-weight: bold;
	text-decoration:none;
}
.default-gray-table table a:visited {
	color: #999999;
	font-weight:bold;
	text-decoration:none;
}
.default-gray-table table a:active,
.default-gray-table table a:hover {
	color: black;
	text-decoration:underline;
}
.default-gray-table table th {
	padding:10px 15px 5px 15px;
	background-color: #898a8a;
}
.default-gray-table table th:first-child {
	text-align: left;
	padding-left:20px;
}
.default-gray-table table tr:first-child th:first-child {
	-moz-border-radius-topleft:5px;
	-webkit-border-top-left-radius:5px;
	border-top-left-radius:5px;
}
.default-gray-table table tr:first-child th:last-child {
	-moz-border-radius-topright:3px;
	-webkit-border-top-right-radius:3px;
	border-top-right-radius:3px;
}
.default-gray-table table tr {
	text-align: center;
	padding-left:20px;
}
.default-gray-table table td:first-child {
	text-align: left;
	padding-left:20px;
	border-left: 0;
}
.default-gray-table table td {
	padding: 5px;
}
.default-gray-table table tr.even td {
	background: #f6f6f6;
	background: -webkit-gradient(linear, left top, left bottom, from(#f8f8f8), to(#f6f6f6));
	background: -moz-linear-gradient(top,  #f8f8f8,  #f6f6f6);
}
.default-gray-table table tr:last-child td {
	border-bottom:0;
}
.default-gray-table table tr:first-child td:first-child {
	-moz-border-radius-topleft:5px;
	-webkit-border-top-left-radius:5px;
	border-top-left-radius:5px;
}
.default-gray-table table tr:first-child td:last-child {
	-moz-border-radius-topright:5px;
	-webkit-border-top-right-radius:5px;
	border-top-right-radius:5px;
}
.default-gray-table table tr:last-child td:first-child {
	-moz-border-radius-bottomleft:5px;
	-webkit-border-bottom-left-radius:5px;
	border-bottom-left-radius:5px;
}
.default-gray-table table tr:last-child td:last-child {
	-moz-border-radius-bottomright:5px;
	-webkit-border-bottom-right-radius:5px;
	border-bottom-right-radius:5px;
}
.default-gray-table table tr:hover td {
	background: #f2f2f2;
	background: -webkit-gradient(linear, left top, left bottom, from(#f2f2f2), to(#f0f0f0));
	background: -moz-linear-gradient(top,  #f2f2f2,  #f0f0f0);	
}'