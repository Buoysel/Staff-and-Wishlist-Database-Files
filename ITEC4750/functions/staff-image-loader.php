<?php 

    require_once('../mysqli_connections/animal_alliance_connection.php');

    function showStafforDirectors($type) {
        global $dbc;
        
        $query = 'SELECT ' . $type . '_Name, ' . $type . '_Title, ' . $type . '_Image, ' . $type . '_Bio ';

        //Append an 's' to $type if 'Director' was sent
        if (strcmp($type, 'Director') == 0){
            $query .= 'FROM Directors';
        } else {
            $query .= "FROM $type";
        }

        $response = @mysqli_query($dbc, $query);
        if($response){
            //Fill the Director or staff pannels.
            while ($row = mysqli_fetch_array($response)) {

                /* Create a valid ID for the modal to use
                 * The modalID is a substring of the StaffImage URL, starting at the postion
                 * of the last '/', -4 to remove the extension. */
                $modalID = substr(
                    $row[$type . '_Image'], 
                    (strrpos($row[$type . '_Image'], '/') + 1), 
                    -4
                );

                echo '<div class="col-md-3 col-sm-6"><!-- PERSON BLOCK -->
                        <div class="panel panel-default text-center">
                            <div class="panel-heading">
                                <span class="fa-stack fa-5x">
                                    <img class="img-responsive" style="height:140px;margin: auto;" src="'.$row[$type . '_Image'].'" alt="?">
                                </span>
                            </div>
                            <div class="panel-body">
                                <h4>'.$row[$type . '_Name'].'</h4>';
                                //Directors in the Director Table currently do not have a title. Show something for directors other than NULL
                                if (strcmp($type, 'Director') == 0){
                                   echo '<p>Director</p>';
                                } else {
                                   echo '<p>'.$row[$type . '_Title'].'</p>';
                                }
                            echo '<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#'.$modalID.'Modal">
                                    Learn More
                                  </button>
                            </div>
                        </div>
                    </div>
                    ';



                echo '<!-- Modal -->
                    <div class="modal fade" id="'.$modalID.'Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myModalLabel">'.$row[$type . '_Name'].' - '.$row[$type . '_Title'].'</h4>
                                </div>
                                <div class="modal-body">
                                    <p>'.$row[$type. '_Bio'].'</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    ';
            }
        } else {
            echo "Could not issue database query";

            echo mysqli_error($dbc);
        }


    }

    function showWishList($category){
        global $dbc;

        $query = "SELECT $category.Item_Name, $category.Item_Price, wishlist.Item_Image, wishlist.Item_URL
                  FROM $category
                  INNER JOIN wishlist
                  ON $category.Item_Name = wishlist.Item_Name";

        $response = @mysqli_query($dbc, $query);
        if ($response) {
            //Fill in items for the wishlist.
            while ($row = mysqli_fetch_array($response)){
                echo '<div class="col-md-3 col-sm-6">
                        <div class="panel panel-default text-center">
                            <div class="panel-heading">
                                <span class="fa-stack fa-5x">
                                    <img class="img-responsive" style="height:140px;margin: auto;" src="'.$row['Item_Image'].'" alt="">
                                </span>
                            </div>
                            <div class="panel-body">
                                <h4>'.$row['Item_Name'].'</h4>
                                <p>$'.$row['Item_Price'].'</p>
                                <a href="'.$row['Item_URL'].'" class="btn btn-primary">Store Page</a>
                            </div>
                        </div>
                    </div>';
            }
        } else {
            echo "Could not issue database query";

            echo mysqli_error($dbc);
        }

    }
?>