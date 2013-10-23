<?php
// $Id: calendar-month.tpl.php,v 1.6.2.3 2008/06/19 22:55:56 karens Exp $
/**
 * @file
 * Template to display a view as a calendar month.
 * 
 * @see template_preprocess_calendar_month.
 *
 * $day_names: An array of the day of week names for the table header.
 * $rows: An array of data for each day of the week.
 * $view: The view.
 * $calendar_links: Array of formatted links to other calendar displays - year, month, week, day.
 * $display_type: year, month, day, or week.
 * $block: Whether or not this calendar is in a block.
 * $min_date_formatted: The minimum date for this calendar in the format YYYY-MM-DD HH:MM:SS.
 * $max_date_formatted: The maximum date for this calendar in the format YYYY-MM-DD HH:MM:SS.
 * $date_id: a css id that is unique for this date, 
 *   it is in the form: calendar-nid-field_name-delta
 * 
 */
//dsm('Display: '. $display_type .': '. $min_date_formatted .' to '. $max_date_formatted);

//create arrays with the months and their corresponding number...this may not be the easiest way to do it but it works.
$monthArray= array(1 => 'Jan', 2 => 'Feb', 3 => 'Mar', 4 => 'Apr', 5 => 'May', 6 => 'June', 7 => 'July', 8 => 'Aug', 9 => 'Sep', 10 => 'Oct', 11 => 'Nov', 12 => 'Dec');
$longMonthArray = array(1 => 'January', 2 => 'February', 3 => 'March', 4 => 'April', 5 => 'May', 6 => 'June', 7 => 'July', 8 => 'August', 9 => 'September', 10 => 'October', 11 => 'November', 12 => 'December');

//get the url of the page you are on (exclude date arguments already in the URL)
$path = drupal_get_path_alias($_GET['q']); 
$path = explode('/', $path); 
foreach($path as $value){
  if (!preg_match('/[0-9]{4}-[0-9]{1}/',$value)){
	  $link=("/".$value);
	  $url = ($url.$link);
  }
  //break apart date arguments in url and set current year/month based on the arguments
  else { 
	  $date= explode('-', $value);
	  $month =  $date[1];
	  $thisYear =  $date[0];
	  $currentMonth = $longMonthArray[$date[1]];
  }
}
//if there are no arguments in the URL set the current year/month as todays date.
if(!isset($date)){
	$month = date('m');
	$currentMonth = date('F');
	$thisYear = date('Y');
}
//get tid from URL if its there
if ($_GET['tid'] != ''){
  $tid="?tid=".$_GET['tid'];
}

//figure out prev/next month based on this month
$nextMonth = $month +1;
$nextYear = $thisYear; 
$prevMonth = $month -1;
$prevYear = $thisYear; 

//handle beginnings/endings of years
if ($month==12) {
  $nextMonth = 1; 
  $nextYear = ($thisYear+1);
  $prevYear = $thisYear;
}
if ($month==1) {
  $prevMonth = 12; 
  $prevYear = ($thisYear-1);
  $nextYear = $thisYear;
}

?>
<div class="calendar-calendar"><div class="month-view">

<?php //print out our month navigation across the top of the calendar ?>
<div class="calendar-navigation">
  <span class="prevMonth">
    <?php 
	  print("<a href='".$url."/".$prevYear."-".$prevMonth.$tid."'>".$monthArray[$prevMonth]."</a>"); 
	?>
  </span>
  <span class="currentMonth"><?php print $currentMonth; ?></span>
  <span class="nextMonth">
    <?php 
	  print("<a href='".$url."/".$nextYear."-".$nextMonth.$tid."'>".$monthArray[$nextMonth]."</a>"); 
	?>
  </span>
</div>
<br /><br />
<table>
  <thead>
    <tr>
      <?php foreach ($day_names as $cell): ?>
        <th class="<?php print $cell['class']; ?>">
          <?php print $cell['data']; ?>
        </th>
      <?php endforeach; ?>
    </tr>
  </thead>
  <tbody>
    <?php foreach ((array) $rows as $row): ?>
      <tr>
        <?php foreach ($row as $cell): ?>
          <td id="<?php print $cell['id']; ?>" class="<?php print $cell['class']; ?>">
            <?php print $cell['data']; ?>
          </td>
        <?php endforeach; ?>
      </tr>
    <?php endforeach; ?>
  </tbody>
</table>
</div></div>
