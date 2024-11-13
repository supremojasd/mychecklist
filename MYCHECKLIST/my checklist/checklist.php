<?php
include "connection.php";
$selectFirstyear = "SELECT * FROM JOIN_FIRSTYEAR";
$query = mysqli_query($connection, $selectFirstyear);

$firstyear = array();
while ($row = mysqli_fetch_assoc($query)) {
    $firstyear[] = $row;
}

$selectSecondyear = "SELECT * FROM JOIN_SECONDYEAR";
$query = mysqli_query($connection, $selectSecondyear);

$secondyear = array();
while ($row = mysqli_fetch_assoc($query)) {
    $secondyear[] = $row;
}

$selectThirdyear = "SELECT * FROM JOIN_THIRDYEAR";
$query = mysqli_query($connection, $selectThirdyear);

$thirdyear = array();
while ($row = mysqli_fetch_assoc($query)) {
    $thirdyear[] = $row;
}

$selectFourthyear = "SELECT * FROM JOIN_FOURTHYEAR";
$query = mysqli_query($connection, $selectFourthyear);

$fourthyear = array();
while ($row = mysqli_fetch_assoc($query)) {
    $fourthyear[] = $row;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<script>
        function searchTable(inputId, tableId) {
            var input, filter, table, tr, td, i, j, txtValue;
            input = document.getElementById(inputId);
            filter = input.value.toLowerCase();
            table = document.getElementById(tableId);
            tr = table.getElementsByTagName("tr");

            for (i = 1; i < tr.length; i++) { // Start from 1 to skip the header row
                tr[i].style.display = "none"; // Hide all rows initially
                td = tr[i].getElementsByTagName("td");
                for (j = 0; j < td.length; j++) {
                    if (td[j]) {
                        txtValue = td[j].textContent || td[j].innerText;
                        if (txtValue.toLowerCase().indexOf(filter) > -1) {
                            tr[i].style.display = ""; // Show row if a match is found
                            break; // Stop checking other cells in this row
                        }
                    }
                }
            }
        }
    </script>


<body>
<body>
    <div class="mx-3 my-4">
        <div class="row">
            <div class="col">
                <div class="card">
                    <h1 class="my-0">CHECKLIST</h1>
                    <h2 class="text-center">FIRST YEAR</h2>

                    <div class="card my-4 mx-2">
                        <h3>First Semester</h3>
                        <input type="text" class="form-control mb-3" id="firstYearFirstSemSearch" onkeyup="searchTable('firstYearFirstSemSearch', 'firstYearFirstSemTable')" placeholder="Search for courses..">
                        <table class="table table-striped" id="firstYearFirstSemTable">
                            <thead>
                                <tr>
                                    <th>Course Code</th>
                                    <th>Course Title</th>
                                    <th>Credits Unit</th>
                                    <th>Contact Hours Lecture</th>
                                    <th>Grade</th>
                                    <th>Instructor</th>
                                    <th>Semester</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach($firstyear as $key) { if($key['semester'] != "firstsem") continue; ?>
                                    <tr>
                                        <td><?php echo $key['course_Code']; ?></td>
                                        <td><?php echo $key['course_Title']; ?></td>
                                        <td><?php echo $key['credits_unit']; ?></td>
                                        <td><?php echo $key['contact_hours_lecture']; ?></td>
                                        <td><?php echo $key['grade']; ?></td>
                                        <td><?php echo $key['instructor_first_Name']." ".$key['instructor_last_Name']; ?></td>
                                        <td><?php echo $key['semester']; ?></td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>

                    <div class="card my-4 mx-2">
                        <h3>Second Semester</h3>
                        <input type="text" class="form-control mb-3" id="firstYearSecondSemSearch" onkeyup="searchTable('firstYearSecondSemSearch', 'firstYearSecondSemTable')" placeholder="Search for courses..">
                        <table class="table table-striped" id="firstYearSecondSemTable">
                            <thead>
                                <tr>
                                    <th>Course Code</th>
                                    <th>Course Title</th>
                                    <th>Credits Unit</th>
                                    <th>Contact Hours Lecture</th>
                                    <th>Grade</th>
                                    <th>Instructor</th>
                                    <th>Semester</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach($firstyear as $key) { if($key['semester'] == "secondsem") { ?>
                                    <tr>
                                        <td><?php echo $key['course_Code']; ?></td>
                                        <td><?php echo $key['course_Title']; ?></td>
                                        <td><?php echo $key['credits_unit']; ?></td>
                                        <td><?php echo $key['contact_hours_lecture']; ?></td>
                                        <td><?php echo $key['grade']; ?></td>
                                        <td><?php echo $key['instructor_first_Name']." ".$key['instructor_last_Name']; ?></td>
                                        <td><?php echo $key['semester']; ?></td>
                                    </tr>
                                <?php } } ?>
                            </tbody>
                        </table>
                    </div>


                    <h2 class=text-center>SECOND YEAR</h2>
                    <div class="card my-4 mx-2">
                        <h3>First Semester</h3>
                        <input type="text" class="form-control mb-3" id="firstYearFirstSemSearch" onkeyup="searchTable('firstYearFirstSemSearch', 'firstYearFirstSemTable')" placeholder="Search for courses..">

                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Course Code</th>
                                    <th>Course Title</th>
                                    <th>Credits Unit</th>
                                    <th>Contact Hours Lecture</th>
                                    <th>Grade</th>
                                    <th>Instructor</th>
                                    <th>semester</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($secondyear as $key) {
                                    if ($key['semester'] != "firstsem") break; ?>
                                    <tr>
                                        <td><?php echo $key['course_Code']; ?></td>
                                        <td><?php echo $key['course_Title']; ?></td>
                                        <td><?php echo $key['credits_unit']; ?></td>
                                        <td><?php echo $key['contact_hours_lecture']; ?></td>
                                        <td><?php echo $key['grade']; ?></td>
                                        <td><?php echo $key['instructor_first_Name'] . " " . $key['instructor_last_Name']; ?></td>
                                        <td><?php echo $key['semester']; ?></td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>

                    <div class="card my-4 mx-2">
                        <h3>Second Semester</h3>
                        <input type="text" class="form-control mb-3" id="firstYearFirstSemSearch" onkeyup="searchTable('firstYearFirstSemSearch', 'firstYearFirstSemTable')" placeholder="Search for courses..">

                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Course Code</th>
                                    <th>Course Title</th>
                                    <th>Credits Unit</th>
                                    <th>Contact Hours Lecture</th>
                                    <th>Grade</th>
                                    <th>Instructor</th>
                                    <th>semester</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($secondyear as $key) {
                                    if ($key['semester'] == "secondsem") { ?>
                                        <tr>
                                            <td><?php echo $key['course_Code']; ?></td>
                                            <td><?php echo $key['course_Title']; ?></td>
                                            <td><?php echo $key['credits_unit']; ?></td>
                                            <td><?php echo $key['contact_hours_lecture']; ?></td>
                                            <td><?php echo $key['grade']; ?></td>
                                            <td><?php echo $key['instructor_first_Name'] . " " . $key['instructor_last_Name']; ?></td>
                                            <td><?php echo $key['semester']; ?></td>
                                        </tr>
                                <?php }
                                } ?>
                            </tbody>
                        </table>
                    </div>

                    <h2 class=text-center>THIRD YEAR</h2>
                    <div class="card my-4 mx-2">
                        <h3>First Semester</h3>
                        <input type="text" class="form-control mb-3" id="firstYearFirstSemSearch" onkeyup="searchTable('firstYearFirstSemSearch', 'firstYearFirstSemTable')" placeholder="Search for courses..">

                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Course Code</th>
                                    <th>Course Title</th>
                                    <th>Credits Unit</th>
                                    <th>Contact Hours Lecture</th>
                                    <th>Grade</th>
                                    <th>Instructor</th>
                                    <th>semester</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($thirdyear as $key) {
                                    if ($key['semester'] != "firstsem") break; ?>
                                    <tr>
                                        <td><?php echo $key['course_Code']; ?></td>
                                        <td><?php echo $key['course_Title']; ?></td>
                                        <td><?php echo $key['credits_unit']; ?></td>
                                        <td><?php echo $key['contact_hours_lecture']; ?></td>
                                        <td><?php echo $key['grade']; ?></td>
                                        <td><?php echo $key['instructor_first_Name'] . " " . $key['instructor_last_Name']; ?></td>
                                        <td><?php echo $key['semester']; ?></td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>

                    <div class="card my-4 mx-2">
                        <h3>Second Semester</h3>
                        <input type="text" class="form-control mb-3" id="firstYearFirstSemSearch" onkeyup="searchTable('firstYearFirstSemSearch', 'firstYearFirstSemTable')" placeholder="Search for courses..">

                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Course Code</th>
                                    <th>Course Title</th>
                                    <th>Credits Unit</th>
                                    <th>Contact Hours Lecture</th>
                                    <th>Grade</th>
                                    <th>Instructor</th>
                                    <th>semester</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($thirdyear as $key) {
                                    if ($key['semester'] == "secondsem") { ?>
                                        <tr>
                                            <td><?php echo $key['course_Code']; ?></td>
                                            <td><?php echo $key['course_Title']; ?></td>
                                            <td><?php echo $key['credits_unit']; ?></td>
                                            <td><?php echo $key['contact_hours_lecture']; ?></td>
                                            <td><?php echo $key['grade']; ?></td>
                                            <td><?php echo $key['instructor_first_Name'] . " " . $key['instructor_last_Name']; ?></td>
                                            <td><?php echo $key['semester']; ?></td>
                                        </tr>
                                <?php }
                                } ?>
                            </tbody>
                        </table>
                    </div>

                    <h2 class=text-center>FOURTH YEAR</h2>
                    <div class="card my-4 mx-2">
                        <h3>First Semester</h3>
                        <input type="text" class="form-control mb-3" id="firstYearFirstSemSearch" onkeyup="searchTable('firstYearFirstSemSearch', 'firstYearFirstSemTable')" placeholder="Search for courses..">

                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Course Code</th>
                                    <th>Course Title</th>
                                    <th>Credits Unit</th>
                                    <th>Contact Hours Lecture</th>
                                    <th>Grade</th>
                                    <th>Instructor</th>
                                    <th>semester</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($fourthyear as $key) {
                                    if ($key['semester'] != "firstsem") break; ?>
                                    <tr>
                                        <td><?php echo $key['course_Code']; ?></td>
                                        <td><?php echo $key['course_Title']; ?></td>
                                        <td><?php echo $key['credits_unit']; ?></td>
                                        <td><?php echo $key['contact_hours_lecture']; ?></td>
                                        <td><?php echo $key['grade']; ?></td>
                                        <td><?php echo $key['instructor_first_Name'] . " " . $key['instructor_last_Name']; ?></td>
                                        <td><?php echo $key['semester']; ?></td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>

                    <div class="card my-4 mx-2">
                        <h3>Second Semester</h3>
                        <input type="text" class="form-control mb-3" id="firstYearFirstSemSearch" onkeyup="searchTable('firstYearFirstSemSearch', 'firstYearFirstSemTable')" placeholder="Search for courses..">

                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Course Code</th>
                                    <th>Course Title</th>
                                    <th>Credits Unit</th>
                                    <th>Contact Hours Lecture</th>
                                    <th>Grade</th>
                                    <th>Instructor</th>
                                    <th>semester</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($fourthyear as $key) {
                                    if ($key['semester'] == "secondsem") { ?>
                                        <tr>
                                            <td><?php echo $key['course_Code']; ?></td>
                                            <td><?php echo $key['course_Title']; ?></td>
                                            <td><?php echo $key['credits_unit']; ?></td>
                                            <td><?php echo $key['contact_hours_lecture']; ?></td>
                                            <td><?php echo $key['grade']; ?></td>
                                            <td><?php echo $key['instructor_first_Name'] . " " . $key['instructor_last_Name']; ?></td>
                                            <td><?php echo $key['semester']; ?></td>
                                        </tr>
                                <?php }
                                } ?>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
</body>

</html>