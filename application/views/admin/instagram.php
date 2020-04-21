<section>
    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">

        <!--**********************************
            Content body start
        ***********************************-->
        <div class="">

            <div class="container-fluid mt-3" id="text-custom">
			<h1 class="header-t">php Analyzer</h3>
               
            <ul class="nav nav-pills mb-3" id="taBB">
                <li class="nav-item"><a href="#navpills-1" class="nav-link active" data-toggle="tab" aria-expanded="false">Dashboard</a>
                </li>
                <li class="nav-item"><a href="#navpills-2" class="nav-link" data-toggle="tab" aria-expanded="false"> Storage</a>
                </li>
                <li class="nav-item"><a href="#navpills-7" class="nav-link" data-toggle="tab" aria-expanded="false"> Compare</a>
                </li>
                <li class="nav-item"><a href="#navpills-3" class="nav-link" data-toggle="tab" aria-expanded="true"> My Reports </a>
                </li>
                <li class="nav-item"><a href="#navpills-4" class="nav-link" data-toggle="tab" aria-expanded="false">Favourites</a>
                </li>
                <li class="nav-item"><a href="#navpills-5" class="nav-link" data-toggle="tab" aria-expanded="false"> Account Settings </a>
                </li>
                <li class="nav-item"><a href="#navpills-6" class="nav-link" data-toggle="tab" aria-expanded="false"> API Documentation </a>
                </li>				
            </ul>
            <div class="tab-content br-n pn">
                <!--------------dashboard tab---------------------->
                <div id="navpills-1" class="tab-pane active">
                    <div class="row">
						<div class="col-lg-12">

                            <div class="card">
                                <div class="card-body">
                                    <div class="pHP_ana_up">
                                                <ul>
                                                    <li><i class="fa fa-calendar-check-o"></i>Joined on 2020-04-06</li>
                                                    <li><i class="fa fa-credit-card"></i>Account Balance of total points</li>
                                                    <li><i class="fa fa-heart-o"></i>Total Favourites</li>
                                                    <li><i class="fa fa-file-text-o"></i>Total Unlock Reports</li>
                                                </ul>
                                                <div class="clearfix"></div>
                                                <h4 class="color">PHP Analyzer <span>Analyze and track your social media account</span></h4>
                                                <div class="div_diff">
                                                    <div class="basic-dropdown">
                                                        <div class="dropdown">
                                                            <button type="button" class="btn btn-primary dropdown-toggle action-button" data-toggle="dropdown" aria-expanded="false">Facebook</button>
                                                            <div class="dropdown-menu" x-placement="top-start" style="position: absolute; transform: translate3d(207px, -107px, 0px); top: 0px; left: 0px; will-change: transform;"><a class="dropdown-item" href="#">Twitter</a> <a class="dropdown-item" href="#">Linkedin</a> <a class="dropdown-item" href="#">Instagram</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <h4 class="card-title color">
                                                <i class="fa fa-search upload_ico"></i> 
                                                <input type="text" placeholder="Enter instagram page username" name="username" id="username" value="" >
                                                <div id="usernameList"></div>
                                                <!-- <input type="hidden" name="<?php //echo $this->security->get_csrf_token_name();?>" value="<?php //echo $this->security->get_csrf_hash();?>"> -->
                                                </h4>
                                                <div class="basic-dropdown float-right" id="mobile-left">
                                                    <div class="dropdown">
                                                        <button type="submit" class="btn btn-primary action-button2">Search</button>
                                                    </div>
                                                </div>
                                    </div>
                                </div>
                            </div>

                        </div>
							<div class="card">
                                <div class="card-body">
							        <div class="pHP_ana_up">
                                        <h4 class="color">Profile 
                                        <button type="button" class="btn btn-primary action-button2"> <i class="fa fa-file-pdf-o"></i> PDF Export</button>
                                        </h4>
							            <div class="col-lg-6  col-sm-6 float-left">
							                <div class="float-left">
							                <img src="<?php echo $user->profile_picture_url; ?>" class="img-fluid right_margin">
							
							
							</div>
							
							<div class="float-left color">
							<h1><?php echo "@".$user->username; ?></h1>
							<h2><?php echo $user->full_name; ?></h2>
                            <h3><?php echo $user->description; ?></h3>
							</div>
							</div>
							
							<div class="col-lg-6  col-sm-6 float-right">
												
							<div class="float-left color right_margin">
							    <h1>Followers</h1>
							    <h2><?php echo $user->followers; ?></h2>							
							</div>
							
							<div class="float-left color right_margin">
							<h1>Uploads</h1>
							<h2><?php echo $user->uploads; ?></h2>
                            </div>
                            
                            <div class="float-left color">
							<h1>Engagement</h1>
							<h2><?php echo $user->average_engagement_rate; ?></h2>
							</div>
							
							</div>
							
							<div class="border-bottom"></div>
							
							</div>
                            <div class="clearfix"></div>
                            
							<div class="col-lg-12 stats">
                                <div class="col-lg-12 float-left">
                                    <h4 class="color">Statistics Summary </h4>
                                    <div class="chart-container">
                                        <canvas id="followers_chart"></canvas>
                                    </div>
                                </div>
                            
                                
                                <div class="col-lg-12">
                                    <h4 class="color">Like Evaluation Chart </h4>
                                    <!-- <div id="flotLine2" class="flot-chart"></div> -->
                                    <div class="chart-container">
                                        <canvas id="following_chart"></canvas>
                                    </div>
                                </div>							
                            </div>
							
							<div class="border-bottom"></div>
							<div class="clearfix"></div>
							<div class="col-lg-12 stats">
							<h4 class="color">Account Stats Summary <em>Showing Last 15 Enteries</em><span><a href="javascript:void(0);"><i class="fa fa-download"></i>Export to CSV</a></span></h4>
							<div class="col-lg-12 float-left">
														
							<div class="table-responsive">
                                    <table class="table header-border">
                                        <thead>
                                            <tr>
                                                <th>Date</th>
												<th>Day</th>
												<th>Likes</th>
                                                <th>Likes Difference </th>
                                                <th>Followers</th>
                                                <th>Followers Difference</th>
                                                <th>Uploads</th>
                                                <th>Uploads Difference</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php
                                         $followers = [];
                                         foreach ($user_logs as $summary) {
                                             $i = 0;
                                             $average_engagement_rate[] = $summary->average_engagement_rate;
                                             $followers[] = $summary->followers;
                                             $following[] = $summary->following;
                                             $uploads[] = $summary->uploads;
                                             $dates[] = $summary->date;
                                             
                                             $i++;
                                         }
                                         
                                         foreach ($dates as $f_date) {
                                            $map_dates[] = date('Y-m-d', strtotime($f_date));
                                         }                                         
                                         
                                        for($i=0;$i<count($user_logs);$i++) {

                                            if($i==(count($user_logs)-1)) {
                                            break;
                                            } else {
                                                $followers_diff[] = $followers[$i]-$followers[$i+1];
                                                $following_diff[] = $following[$i]-$following[$i+1];
                                                $uploads_diff[] = $uploads[$i]-$uploads[$i+1];
                                            }
                                        }
                                        
                                            $j = 0;
                                            foreach ($user_logs as $log) { 
                                                $followers_diff_total += $followers_diff[$j];
                                                echo "<tr><td>".$log->date."</td>";
                                                echo "<td>".date('D', strtotime($log->date))."</td>";
                                                echo "<td>".$log->followers."</td>";
                                                echo "<td><span class='badge badge-primary px-2'>".$followers_diff[$j]."</td>";
                                                echo "<td>".$log->following."</td>";
                                                echo "<td><span class='badge badge-primary px-2'>".$following_diff[$j]."</span></td>";
                                                echo "<td>".$log->uploads."</td>";
                                                echo "<td>".$uploads_diff[$j]."</td></tr>";
                                                $j++;
                                            }
                                            ?>
                                          <tr><td colspan="2">Total Summary</td><td><span class="badge badge-primary px-2"><?php echo $followers_diff_total; ?></td><td colspan="6"></td></tr>
                                        </tbody>
                                    </table>
                                </div>
							</div>
							
							
							
							
							
							
							
							
							
							
                                </div>   
								
								
								<div class="clearfix"></div>
								
								<div class="border-bottom"></div>
									<div class="col-lg-12 stats">
							            <h4 class="color">Average Engagement Rate Chart <em>Each value in this chart is equal to the average engagement rate of the account in that specific day.</em></h4>
							            <div class="chart-container">
                                            <canvas id="average_engagement_rate_chart"></canvas>
                                        </div>
                                    </div>   
								<div class="clearfix"></div>
								<div class="border-bottom"></div>
								<div class="col-lg-12 stats">
							<h4 class="color">Future Projection <em>Here you can see the future projection based on your previuos days average.</em></h4>
							<div class="col-lg-12 float-left">
														
							<div class="table-responsive">
                                    <table class="table header-border">
                                        <thead>
                                            <tr>
                                                <th>Time Until</th>
												<th>Date</th>
												<th>Followers</th>
                                                <th>Uploads</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Current Stats</td>
                                                <td> <?= (new \DateTime())->format('Y-m-d') ?> </td>
                                                <td><?= $user->followers; ?></td>
												<td><?= $user->uploads; ?></td>
                                            </tr>
											<tr>
                                                <td>30 days</td>
                                                <td><?= (new \DateTime())->modify('+30 day')->format('Y-m-d') ?></td>
                                                <td><?= $user->followers + ($average['followers'] * 30) ?></td>
                                                <td><?= $user->uploads + ($average['uploads'] * 30) ?></td>
                                            </tr>
                                            <tr>
                                                <td>60 days</td>
                                                <td><?= (new \DateTime())->modify('+60 day')->format('Y-m-d') ?></td>
                                                <td><?= $user->followers + ($average['followers'] * 60) ?></td>
                                                <td><?= $user->uploads + ($average['uploads'] * 60) ?></td>
                                            </tr>
                                            <tr>
                                                <td>3 months</td>
                                                <td><?= (new \DateTime())->modify('+90 day')->format('Y-m-d') ?></td>
                                                <td><?= $user->followers + ($average['followers'] * 90) ?></td>
                                                <td><?= $user->uploads + ($average['uploads'] * 90) ?></td>
                                            </tr>
                                            <tr>
                                                <td>6 months</td>
                                                <td><?= (new \DateTime())->modify('+180 day')->format('Y-m-d') ?></td>
                                                <td><?= $user->followers + ($average['followers'] * 180) ?></td>
                                                <td><?= $user->uploads + ($average['uploads'] * 180) ?></td>
                                            </tr>
                                            <tr>
                                                <td>9 months</td>
                                                <td><?= (new \DateTime())->modify('+270 day')->format('Y-m-d') ?></td>
                                                <td><?= $user->followers + ($average['followers'] * 270) ?></td>
                                                <td><?= $user->uploads + ($average['uploads'] * 270) ?></td>
                                            </tr>
                                            <tr>
                                                <td>1 year</td>
                                                <td><?= (new \DateTime())->modify('+365 day')->format('Y-m-d') ?></td>
                                                <td><?= $user->followers + ($average['followers'] * 365) ?></td>
                                                <td><?= $user->uploads + ($average['uploads'] * 365) ?></td>
                                            </tr>
                                            <tr>
                                                <td>1 year and half</td>
                                                <td><?= (new \DateTime())->modify('+547 day')->format('Y-m-d') ?></td>
                                                <td><?= $user->followers + ($average['followers'] * 547) ?></td>
                                                <td><?= $user->uploads + ($average['uploads'] * 547) ?></td>
                                            </tr>
                                            <tr>
                                                <td>2 years</td>
                                                <td><?= (new \DateTime())->modify('+730 day')->format('Y-m-d') ?></td>
                                                <td><?= $user->followers + ($average['followers'] * 730) ?></td>
                                                <td><?= $user->uploads + ($average['uploads'] * 730) ?></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">Based on an average of</td>
                                                <td><?= "+".$average['followers']." followers /day"; ?></td>
                                                <td><?= "+".$average['uploads']."uploads /day"; ?></td>
                                            </tr>
                                          
                                        </tbody>
                                    </table>
                                </div>
							</div>
							
							
							
							
							
							
							
							
							
							
                                </div>   
								
								
								<div class="clearfix"></div>
								
								<div class="border-bottom"></div>
									<div class="col-lg-12 stats">
                            <h4 class="color">Top Posts <em>Top posts from the last 6 posts</em></h4>
                                <?php
                                    // if(count($details->top_posts)) {
                                    //     foreach($details->top_posts as $shortcode => $value) {
                                    //         echo $shortcode."</br>";
                                    //     }
                                    // }
                                    echo $top_media;
                                ?>
																
							
							    <!-- <div class="col-lg-4 col-md-4 col-sm-6 float-left">
								<img src="<?php echo base_url(); ?>assets/custom/images/social-ad.jpg" class="img-fluid">
								</div>	
								
								<div class="col-lg-4 col-md-4 col-sm-6 float-left">
								<img src="<?php echo base_url(); ?>assets/custom/images/social-ad.jpg" class="img-fluid">
								</div>	
								
								<div class="col-lg-4 col-md-4 col-sm-6 float-left">
								<img src="<?php echo base_url(); ?>assets/custom/images/social-ad.jpg" class="img-fluid">
								</div>	
								
								<div class="col-lg-4 col-md-4 col-sm-6 float-left">
								<img src="<?php echo base_url(); ?>assets/custom/images/social-ad.jpg" class="img-fluid">
                                </div>	
                                
								<div class="col-lg-4 col-md-4 col-sm-6 float-left">
								<img src="<?php echo base_url(); ?>assets/custom/images/social-ad.jpg" class="img-fluid">
								</div>	 -->
							
							
							
                                </div>  
								
								<div class="clearfix"></div>
								
								<div class="border-bottom"></div>
									<div class="col-lg-6 col-md-6 stats float-left">
							<h4 class="color">Top @Mentions <em>Top mentions from the last 6 posts</em></h4>
                            <?php 
                                foreach ($details->top_mentions as $mention => $mention_count) {
                            ?>
							<h6 class="hash_tg"><?php echo $mention; ?> <span class="text-right"><?php echo $mention_count; ?></span><h6>
                            <?php } ?>
                            </div>  
								
								<div class="col-lg-6 col-md-6 stats float-left">
                            <h4 class="color">Top @hashtags <em>Top mentions from the last 6 posts</em> </h4>
                            <?php 
                                foreach ($details->top_hashtags as $hastag => $hashtag_count) {
                            ?>
							<h6 class="hash_tg"><?php echo $hastag; ?><span class="text-right"><?php echo $hashtag_count; ?></span><h6>
							<?php } ?>	
                                </div>  
								
									<div class="clearfix"></div>
								<div class="border-bottom"></div>
								<div class="col-lg-12 stats">
							<h4 class="color">Engagement Rate on Instagram<em>These are overall / average engagement rates found on Instagram. Statistics based on analysis of more than 1 million influencer profiles.</em></h4>
							<div class="col-lg-12 float-left">
                            <?php
                              
        $report_engagement = '<img src="' . $user->profile_picture_url . '" class="img-responsive rounded-circle instagram-avatar-small" alt="' . $user->full_name . '" style="height:20%;width:6%;" />&nbsp;' . '<strong>' . $user->average_engagement_rate . '%</strong>';
                                    ?>
							<div class="table-responsive">
                                    <table class="table header-border">
                                        <thead>
                                            <tr>
                                                <th>Followers</th>
												<th>Other Average Engagement </th>
												<th>Profile Engagement</th>
                                               
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr <?php if($user->followers < 1000) echo 'class="bg-light"' ?>>
                                                <td>< 1,000 </td>
                                                <td>8%</td>
												<td><?php if($user->followers < 1000): ?>
                                                <?= $report_engagement ?>
                                                <?php endif ?></td>
                                            </tr>
											  <tr <?php if($user->followers >= 1000 && $user->followers < 5000) echo 'class="bg-light"' ?>>
                                                <td> < 5,000</td>
                                                <td>5.7%</td>
												<td><?php if($user->followers >= 1000 && $user->followers < 5000): ?>
                                                    <?= $report_engagement ?>
                                                    <?php endif ?></td>
                                            </tr>											
											 <tr <?php if($user->followers >= 5000 && $user->followers < 10000) echo 'class="bg-light"' ?>>
                                                <td>< 10,000</td>
                                                <td>4%</td>
												<td><?php if($user->followers >= 5000 && $user->followers < 10000): ?>
                                                <?= $report_engagement ?>
                                                <?php endif ?></td>
                                            </tr>
                                            <tr <?php if($user->followers >= 10000 && $user->followers < 100000) echo 'class="bg-light"' ?>>
                                                <td>< 100,000</td>
                                                <td>2.4%</td>
												<td><?php if($user->followers >= 10000 && $user->followers < 100000): ?>
                                                <?= $report_engagement ?>
                                                <?php endif ?></td>
                                            </tr>
                                            <tr <?php if($user->followers >= 100000) echo 'class="bg-light"' ?>>
                                                <td>100,000+</td>
                                                <td>1.7%</td>
												<td><?php if($user->followers >= 100000): ?>
                                                <?= $report_engagement ?>
                                                <?php endif ?></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
							</div>
							
							
                                </div>   
								
								
									<div class="clearfix"></div>
								<div class="border-bottom"></div>
								<div class="col-lg-12 stats">
							<h4 class="color">Media Stats Summary<em>Showing Last 15 enteries</em></h4>
							<div class="col-lg-12 float-left">
														
							<div class="table-responsive">
                                    <table class="table header-border">
                                        <thead>
                                            <tr>
											    <th>Posted On</th>
                                                <th>Caption</th>
												<th>Likes</th>
												<th>Growth</th>
												<th>Comments</th>
												<th>Comments Growth</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php 
                                            foreach ($user_media as $media_data) {
                                                $media_date[] = $media_data->date;
                                                echo "<tr>";
                                                echo "<td>".$media_data->date."</td>";
                                                echo "<td><p title='$media_data->caption'>".substr($media_data->caption, 0, 20)."</p></td>";
                                                echo "<td><span class='badge badge-primary px-2'>".$media_data->likes."</span></td>";
                                                echo "<td>".$media_data->date."</td>";
                                                echo "<td><span class='badge badge-primary px-2'>".$media_data->comments."</span></td>";
                                                echo "<td>".$media_data->date."</td>";
                                                echo "</tr>";
                                             }
                                             ?>
                                        </tbody>
                                    </table>
                                </div>
							</div>
							
                                </div>   
								
								<div class="clearfix"></div>
								
								<div class="border-bottom"></div>
									<div class="col-lg-12 stats">
							<h4 class="color">Media Stats Chart <em>Lorem ipsum sit dolor amet ipum</em></h4>
							
							<div id="chart-with-area" class="ct-chart ct-golden-section"></div>
							
                            <div class="chart-container">
                                <canvas id="media_chart"></canvas>
                            </div>
							
							
							
							
                                </div>  
								
                                </div>
                            </div>
							
                        </div>   
						  
						
					
                                           
                                        </div>
                                    </div>
                                    <div id="navpills-2" class="tab-pane">
                                        <div class="row align-items-center">
                                           <div class="col-lg-12">
                                          <img src="<?php echo base_url(); ?>assets/custom/images/sch-graph.jpg" width="100%"> </div>  

 						
                                        </div>
                                    </div>
									
									
									 <div id="navpills-7" class="tab-pane">
                                        <div class="row align-items-center">
                                           <div class="col-lg-12">
                                          
										  <div class="card">
                                <div class="card-body">
								
								
									
							
							<div class="pHP_ana_up">
							<ul>
							<li><i class="fa fa-calendar-check-o"></i>Joined on 2020-04-06</li>
							<li><i class="fa fa-credit-card"></i>Account Balance of total points</li>
							<li><i class="fa fa-heart-o"></i>Total Favourites</li>
							<li><i class="fa fa-file-text-o"></i>Total Unlock Reports</li>
							</ul>
							
							
							
							<div class="clearfix"></div>
							
							<h4 class="color">Compare Facebook Account <span>Analyze and track your social media account</span></h4>
							
							
							
							<div class="div_diff">
								<div class="basic-dropdown">
                                    <div class="dropdown">
                                        <button type="button" class="btn btn-primary dropdown-toggle action-button" data-toggle="dropdown" aria-expanded="false">Facebook</button>
                                        <div class="dropdown-menu" x-placement="top-start" style="position: absolute; transform: translate3d(207px, -107px, 0px); top: 0px; left: 0px; will-change: transform;"><a class="dropdown-item" href="#">Twitter</a> <a class="dropdown-item" href="#">Linkedin</a> <a class="dropdown-item" href="#">Instagram</a>
                                        </div>
                                    </div>
                                </div>
								
								<div class="vs">vs</div>
								<div class="basic-dropdown">
                                    <div class="dropdown">
                                        <button type="button" class="btn btn-primary dropdown-toggle action-button" data-toggle="dropdown" aria-expanded="false">Instagram</button>
                                        <div class="dropdown-menu" x-placement="top-start" style="position: absolute; transform: translate3d(207px, -107px, 0px); top: 0px; left: 0px; will-change: transform;"><a class="dropdown-item" href="#">Twitter</a> <a class="dropdown-item" href="#">Linkedin</a> <a class="dropdown-item" href="#">Facebook</a>
                                        </div>
                                    </div>
                                </div>
																
									<div class="basic-dropdown float-right">
                                    <div class="dropdown">
                                        <button type="button" class="btn btn-primary action-button2">Search</button>
                                       
                                    </div>
                                </div>
																		</div>
							
							
							
							<div class="border-bottom"></div>
							<div class="clearfix"></div>
							
							
							
							<div class="col-lg-6  col-sm-12 float-left">
							
							<div class="col-lg-4 col-md-4 col-sm-6 float-left">
						<div class="float-left color right_margin">
							<h1>Like</h1>
							<h2>37,11,612</h2>
							
							</div>
							
							<div class="float-left color">
							<h1>Followers</h1>
							<h2>37,219,156</h2>
							
							</div>
							</div>
							
							<div class="col-lg-4 col-md-4 col-sm-6 float-left">
							<div class="float-left color">
							<h1>Adidas</h1>
							<h2>Adidas</h2>
							 <div class="dropdown">
                                        <button type="button" class="btn btn-primary action-button2">View Report</button>
                                       
                                    </div>
							</div>
							</div>
							
							<div class="col-lg-4 col-md-4 col-sm-6 float-left">
								<div class="float-left">
							<img src="<?php echo base_url(); ?>assets/custom/images/adi.png" class="img-fluid right_margin">
							
							
							</div>
							</div>
							</div>
							
					<div class="col-lg-6  col-sm-12 float-left">
							<div class="col-lg-4 col-md-4 col-sm-6 float-left">
								<div class="float-left">
							<img src="<?php echo base_url(); ?>assets/custom/images/ree.png" class="img-fluid right_margin">
							
							
							</div>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-6 float-left">
						<div class="float-left color right_margin">
							<h1>Like</h1>
							<h2>37,11,612</h2>
							
							</div>
							
							<div class="float-left color">
							<h1>Followers</h1>
							<h2>37,219,156</h2>
							
							</div>
							</div>
							
							<div class="col-lg-4 col-md-4 col-sm-6 float-left">
							<div class="float-left color">
							<h1>Adidas</h1>
							<h2>Adidas</h2>
							 <div class="dropdown">
                                        <button type="button" class="btn btn-primary action-button2">View Report</button>
                                       
                                    </div>
							</div>
							</div>
							
							
							</div>
							
							<div class="border-bottom"></div>
							<div class="clearfix"></div>
							
							<div class="col-lg-12 stats">
							<h4 class="color">Statistics Summary</h4>
							<div class="col-lg-12 float-left">
														
							<div class="table-responsive">
                                    <table class="table header-border">
                                        <thead>
                                            <tr>
                                                <th>Image</th>
												<th>User</th>
												<th>Posted On</th>
                                                <th>Caption</th>
                                                <th>Likes</th>
                                                <th>Growth</th>
                                                <th>Comments</th>
                                                <th>Comments growth</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                            <tr>
                                                <td>2020-04-09
                                                </td>
                                                <td>Sunday</td>
                                                <td>3,07,111
                                                </td>
												<td><span class="badge badge-primary px-2">365</span>
                                                </td>
												<td>37,32,2111
                                                </td>
												<td> <span class="badge badge-primary px-2">312</span>
                                                </td>
												<td>1200
                                                </td>
                                                <td>1200
                                                </td>
                                            </tr>
                                          
                                        </tbody>
                                    </table>
                                </div>
							</div>
							
							
							
							
							
							
							
							
							
							
                                </div>   
							
							
							<div class="border-bottom"></div>
							
							<div class="clearfix"></div>
							
							<div class="col-lg-12">
							<h4 class="color">Flow Chart</h4>
						
							</div>
							
							<div class="border-bottom"></div>
							
							<div class="clearfix"></div>
							
							<div class="col-lg-12">
							<h4 class="color">Average Engagement Chart</h4>
						
							</div>
							
							<div class="border-bottom"></div>
							<div class="clearfix"></div>
							<div class="col-lg-12 stats">
							<h4 class="color">Top Posts <em>Top posts from the last 6 posts</em></h4>
							
								<div class="col-lg-4 col-md-4 col-sm-6 float-left">

								<img src="<?php echo base_url(); ?>assets/custom/images/social-ad.jpg" class="img-fluid">
								</div>								
							
							<div class="col-lg-4 col-md-4 col-sm-6 float-left">

								<img src="<?php echo base_url(); ?>assets/custom/images/social-ad.jpg" class="img-fluid">
								</div>	
								
								<div class="col-lg-4 col-md-4 col-sm-6 float-left">

								<img src="<?php echo base_url(); ?>assets/custom/images/social-ad.jpg" class="img-fluid">
								</div>	
								
								<div class="col-lg-4 col-md-4 col-sm-6 float-left">

								<img src="<?php echo base_url(); ?>assets/custom/images/social-ad.jpg" class="img-fluid">
								</div>	
								
								<div class="col-lg-4 col-md-4 col-sm-6 float-left">

								<img src="<?php echo base_url(); ?>assets/custom/images/social-ad.jpg" class="img-fluid">
								</div>	
								<div class="col-lg-4 col-md-4 col-sm-6 float-left">

								<img src="<?php echo base_url(); ?>assets/custom/images/social-ad.jpg" class="img-fluid">
								</div>	
							
							
							
                                </div>
							
							</div>
							
							
							
                                   
                                </div>
                            </div>
										  
										  </div>  

 						
                                        </div>
                                    </div>
									
									
                                    <div id="navpills-3" class="tab-pane">
                                        <div class="row">
                                            
                                            <div class="col-lg-12 col-sm-12">
											
											 <div>
                                                  
                               
                                
                                <div id="accordion-two" class="accordion custom_CSS">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5 class="mb-0" data-toggle="collapse" data-target="#collapseOne1" aria-expanded="true" aria-controls="collapseOne1"><i class="fa" aria-hidden="true"></i>Facebook Accounts Weekly Report</h5>
                                        </div>
                                        <div id="collapseOne1" class="collapse show" data-parent="#accordion-two">
                                     <div class="card" id="white">
								 <div class="card-body">
								<div class="pHP_ana_up" id="center-img">
								 
															<h4 class="color">Report for Adidas <span>We are even sending you notification of your tracked  social media accounts progress by email</span>
								
								</h4>
								
								<div class="col-lg-3 col-md-3 col-sm-6 float-left">
								<img src="<?php echo base_url(); ?>assets/custom/images/adi.png" class="img-fluid text-center">
								<h5 class="text-center">Adidas</h5>
								</div>
								
								
								<div class="col-lg-7 col-md-7 col-sm-6 float-left">
								
								<div class="table-responsive stats">
                                    <table class="table header-border">
                                        <thead>
                                            <tr>
											 <th>Adidas</th>
                                                <th>Previous</th>
                                                <th>Latest</th>
                                                <th>Difference</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
                                                
                                           
                                            </tr>
                                            <tr>
											<td>Following</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
                                                
                                            </tr>
                                            <tr>
											<td>Uploads</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
                                                
                                            </tr>
											
											 <tr>
											<td>Average Rate</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
												
                                                
                                            </tr>
                                          
                                        </tbody>
                                    </table>
                                </div>
								</div>
								
								
                                   </div>
						</div>  </div>
								   
								   
								   
								   
								   
								   <div class="clearfix"></div>
                            <div class="card" id="white">
								 <div class="card-body">
								<div class="pHP_ana_up" id="center-img">
								<h4 class="color">Report for Reebok <span>We are even sending you notification of your tracked  social media accounts progress by email</span>
								
								</h4>
								
								<div class="col-lg-3 col-md-3 col-sm-6 float-left">
								<img src="<?php echo base_url(); ?>assets/custom/images/ree.png" class="img-fluid text-center">
								<h5 class="text-center">Reebok</h5>
								</div>
								
								
								<div class="col-lg-7 col-md-7 col-sm-6 float-left">
								
								<div class="table-responsive stats">
                                    <table class="table header-border">
                                        <thead>
                                            <tr>
											 <th>Reebok</th>
                                                <th>Previous</th>
                                                <th>Latest</th>
                                                <th>Difference</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
                                                
                                           
                                            </tr>
                                            <tr>
											<td>Following</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
                                                
                                            </tr>
                                            <tr>
											<td>Uploads</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
                                                
                                            </tr>
											
											 <tr>
											<td>Average Rate</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
												
                                                
                                            </tr>
                                          
                                        </tbody>
                                    </table>
                                </div>
								</div>
								
								
                                   </div>
								   
								   </div></div>
								   
								   
								   
								   
								   
								   
								   
					
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header">
                                            <h5 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseTwo2" aria-expanded="false" aria-controls="collapseTwo2"><i class="fa" aria-hidden="true"></i> Youtube Accounts Weekly Report</h5>
                                        </div>
                                        <div id="collapseTwo2" class="collapse" data-parent="#accordion-two">
                                           
										   
										   
										   <div class="card" id="white">
								 <div class="card-body">
								<div class="pHP_ana_up" id="center-img">
								<h4 class="color">Report for Gucci <span>We are even sending you notification of your tracked  social media accounts progress by email</span>
								
								</h4>
								
								<div class="col-lg-3 col-md-3 col-sm-6 float-left">
								<img src="<?php echo base_url(); ?>assets/custom/images/guc.png" class="img-fluid text-center">
								<h5 class="text-center">Gucci</h5>
								</div>
								
								
								<div class="col-lg-7 col-md-7 col-sm-6 float-left">
								
								<div class="table-responsive stats">
                                    <table class="table header-border">
                                        <thead>
                                            <tr>
											 <th>Gucci</th>
                                                <th>Previous</th>
                                                <th>Latest</th>
                                                <th>Difference</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
                                                
                                           
                                            </tr>
                                            <tr>
											<td>Following</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
                                                
                                            </tr>
                                            <tr>
											<td>Uploads</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
                                                
                                            </tr>
											
											 <tr>
											<td>Average Rate</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
												
                                                
                                            </tr>
                                          
                                        </tbody>
                                    </table>
                                </div>
								</div>
								
								
                                   </div>
								   </div></div>
										   
										   
										   
										   
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header">
                                            <h5 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseThree3" aria-expanded="false" aria-controls="collapseThree3"><i class="fa" aria-hidden="true"></i> Twitter Accounts Weekly Report</h5>
                                        </div>
                                        <div id="collapseThree3" class="collapse" data-parent="#accordion-two">
                                           <div class="card" id="white">
								 <div class="card-body">
								<div class="pHP_ana_up" id="center-img">
								 
															<h4 class="color">Report for Adidas <span>We are even sending you notification of your tracked  social media accounts progress by email</span>
								
								</h4>
								
								<div class="col-lg-3 col-md-3 col-sm-6 float-left">
								<img src="<?php echo base_url(); ?>assets/custom/images/adi.png" class="img-fluid text-center">
								<h5 class="text-center">Adidas</h5>
								</div>
								
								
								<div class="col-lg-7 col-md-7 col-sm-6 float-left">
								
								<div class="table-responsive stats">
                                    <table class="table header-border">
                                        <thead>
                                            <tr>
											 <th>Adidas</th>
                                                <th>Previous</th>
                                                <th>Latest</th>
                                                <th>Difference</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
                                                
                                           
                                            </tr>
                                            <tr>
											<td>Following</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
                                                
                                            </tr>
                                            <tr>
											<td>Uploads</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
                                                
                                            </tr>
											
											 <tr>
											<td>Average Rate</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
												
                                                
                                            </tr>
                                          
                                        </tbody>
                                    </table>
                                </div>
								</div>
								
								
                                   </div>
						</div>  </div>
								   
                                        </div>
                                    </div>
									
									 <div class="card">
                                        <div class="card-header">
                                            <h5 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseThree4" aria-expanded="false" aria-controls="collapseThree4"><i class="fa" aria-hidden="true"></i> Instagram Accounts Weekly Report</h5>
                                        </div>
                                        <div id="collapseThree4" class="collapse" data-parent="#accordion-two">
                                           <div class="card" id="white">
								 <div class="card-body">
								<div class="pHP_ana_up" id="center-img">
								<h4 class="color">Report for Reebok <span>We are even sending you notification of your tracked  social media accounts progress by email</span>
								
								</h4>
								
								<div class="col-lg-3 col-md-3 col-sm-6 float-left">
								<img src="<?php echo base_url(); ?>assets/custom/images/ree.png" class="img-fluid text-center">
								<h5 class="text-center">Reebok</h5>
								</div>
								
								
								<div class="col-lg-7 col-md-7 col-sm-6 float-left">
								
								<div class="table-responsive stats">
                                    <table class="table header-border">
                                        <thead>
                                            <tr>
											 <th>Reebok</th>
                                                <th>Previous</th>
                                                <th>Latest</th>
                                                <th>Difference</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
                                                
                                           
                                            </tr>
                                            <tr>
											<td>Following</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
                                                
                                            </tr>
                                            <tr>
											<td>Uploads</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
                                                
                                            </tr>
											
											 <tr>
											<td>Average Rate</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                                <td><span class="badge badge-primary px-2">O7,707,709</span>
                                                </td>
												
                                                
                                            </tr>
                                          
                                        </tbody>
                                    </table>
                                </div>
								</div>
								
								
                                   </div>
								   
								   </div></div>
								   
                                        </div>
                                    </div>
									
									
                                </div>
                       
                    </div>
											
											
                         
							
							 
                            
                        </div> 
						
						
                                        </div>
                                    </div>
									
									
									 <div id="navpills-4" class="tab-pane">
                                        <div class="row">
                        					


<div class="col-lg-12">

 <div id="accordion-three" class="accordion custom_CSS">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5 class="mb-0" data-toggle="collapse" data-target="#click1" aria-expanded="true" aria-controls="click1"><i class="fa" aria-hidden="true"></i>Your Favourite Facebook Accounts <span>5</span></h5>
                                        </div>
                                        <div id="click1" class="collapse show" data-parent="#accordion-three">
                                 
								   
                            <div class="card" id="white">
								 <div class="card-body">
								<div class="pHP_ana_up">
									
								
								<div class="col-lg-12">
								
								<div class="table-responsive stats">
                                    <table class="table header-border">
                                        <thead>
                                            <tr>
											<th></th>
											 <th>Username</th>
                                                <th>Likes</th>
                                                <th>Followers</th>
                                                
												<th></th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
											<td><img src="<?php echo base_url(); ?>assets/custom/images/adi.png" width="30"></td>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                               
												<td><i class="fa fa-heart"></i>
												</td>
                                                
                                           
                                            </tr>
                                            <tr>
											<td><img src="<?php echo base_url(); ?>assets/custom/images/adi.png" width="30"></td>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                               
												<td><i class="fa fa-heart"></i>
												</td>
                                                
                                           
                                            </tr>
                                            <tr>
											<td><img src="<?php echo base_url(); ?>assets/custom/images/adi.png" width="30"></td>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                              
												<td><i class="fa fa-heart"></i>
												</td>
                                                
                                           
                                            </tr>
											
											 <tr>
											<td><img src="<?php echo base_url(); ?>assets/custom/images/adi.png" width="30"></td>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                              
												<td><i class="fa fa-heart"></i>
												</td>
                                                
                                           
                                            </tr>
                                          
                                        </tbody>
                                    </table>
                                </div>
								</div>
								
								
                                   </div>
								   
								   </div></div>
							
								   					
                                        </div>
                                    </div>
                            
							
							 <div class="card">
                                        <div class="card-header">
                                            <h5 class="mb-0 collapsed" data-toggle="collapse" data-target="#click2" aria-expanded="false" aria-controls="click2"><i class="fa" aria-hidden="true"></i> Your Favourite youtube accounts
											<span>20</span>
                                        </div>
                                        <div id="click2" class="collapse" data-parent="#accordion-three">
                                            <div class="card" id="white">
								 <div class="card-body">
								<div class="pHP_ana_up">
									
								
								<div class="col-lg-12">
								
								<div class="table-responsive stats">
                                    <table class="table header-border">
                                        <thead>
                                            <tr>
											<th></th>
											 <th>Username</th>
                                                <th>Likes</th>
                                                <th>Followers</th>
                                                
												<th></th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
											<td><img src="<?php echo base_url(); ?>assets/custom/images/adi.png" width="30"></td>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                               
												<td><i class="fa fa-heart"></i>
												</td>
                                                
                                           
                                            </tr>
                                            <tr>
											<td><img src="<?php echo base_url(); ?>assets/custom/images/adi.png" width="30"></td>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                               
												<td><i class="fa fa-heart"></i>
												</td>
                                                
                                           
                                            </tr>
                                            <tr>
											<td><img src="<?php echo base_url(); ?>assets/custom/images/adi.png" width="30"></td>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                              
												<td><i class="fa fa-heart"></i>
												</td>
                                                
                                           
                                            </tr>
											
											 <tr>
											<td><img src="<?php echo base_url(); ?>assets/custom/images/adi.png" width="30"></td>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                              
												<td><i class="fa fa-heart"></i>
												</td>
                                                
                                           
                                            </tr>
                                          
                                        </tbody>
                                    </table>
                                </div>
								</div>
								
								
                                   </div>
								   
								   </div></div>
                                        </div>
                                    </div>
									
									<div class="card">
                                        <div class="card-header">
                                            <h5 class="mb-0" data-toggle="collapse" data-target="#click3" aria-expanded="true" aria-controls="click3"><i class="fa" aria-hidden="true"></i>Your Favourite Twitter Accounts <span>5</span></h5>
                                        </div>
                                        <div id="click3" class="collapse show" data-parent="#accordion-three">
                                 
								   
                            <div class="card" id="white">
								 <div class="card-body">
								<div class="pHP_ana_up">
									
								
								<div class="col-lg-12">
								
								<div class="table-responsive stats">
                                    <table class="table header-border">
                                        <thead>
                                            <tr>
											<th></th>
											 <th>Username</th>
                                                <th>Likes</th>
                                                <th>Followers</th>
                                                
												<th></th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
											<td><img src="<?php echo base_url(); ?>assets/custom/images/adi.png" width="30"></td>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                               
												<td><i class="fa fa-heart"></i>
												</td>
                                                
                                           
                                            </tr>
                                            <tr>
											<td><img src="<?php echo base_url(); ?>assets/custom/images/adi.png" width="30"></td>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                               
												<td><i class="fa fa-heart"></i>
												</td>
                                                
                                           
                                            </tr>
                                            <tr>
											<td><img src="<?php echo base_url(); ?>assets/custom/images/adi.png" width="30"></td>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                              
												<td><i class="fa fa-heart"></i>
												</td>
                                                
                                           
                                            </tr>
											
											 <tr>
											<td><img src="<?php echo base_url(); ?>assets/custom/images/adi.png" width="30"></td>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                              
												<td><i class="fa fa-heart"></i>
												</td>
                                                
                                           
                                            </tr>
                                          
                                        </tbody>
                                    </table>
                                </div>
								</div>
								
								
                                   </div>
								   
								   </div></div>
							
								   					
                                        </div>
                                    </div>
							
							
							<div class="card">
                                        <div class="card-header">
                                            <h5 class="mb-0" data-toggle="collapse" data-target="#click4" aria-expanded="true" aria-controls="click4"><i class="fa" aria-hidden="true"></i>Your Favourite Instagram Accounts <span>5</span></h5>
                                        </div>
                                        <div id="click4" class="collapse show" data-parent="#accordion-three">
                                 
								   
                            <div class="card" id="white">
								 <div class="card-body">
								<div class="pHP_ana_up">
									
								
								<div class="col-lg-12">
								
								<div class="table-responsive stats">
                                    <table class="table header-border">
                                        <thead>
                                            <tr>
											<th></th>
											 <th>Username</th>
                                                <th>Likes</th>
                                                <th>Followers</th>
                                                
												<th></th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
											<td><img src="<?php echo base_url(); ?>assets/custom/images/adi.png" width="30"></td>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                               
												<td><i class="fa fa-heart"></i>
												</td>
                                                
                                           
                                            </tr>
                                            <tr>
											<td><img src="<?php echo base_url(); ?>assets/custom/images/adi.png" width="30"></td>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                               
												<td><i class="fa fa-heart"></i>
												</td>
                                                
                                           
                                            </tr>
                                            <tr>
											<td><img src="<?php echo base_url(); ?>assets/custom/images/adi.png" width="30"></td>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                              
												<td><i class="fa fa-heart"></i>
												</td>
                                                
                                           
                                            </tr>
											
											 <tr>
											<td><img src="<?php echo base_url(); ?>assets/custom/images/adi.png" width="30"></td>
											<td>Followers</td>
                                                <td>7,707,709
                                                </td>
                                                <td>7,707,709</td>
                                              
												<td><i class="fa fa-heart"></i>
												</td>
                                                
                                           
                                            </tr>
                                          
                                        </tbody>
                                    </table>
                                </div>
								</div>
								
								
                                   </div>
								   
								   </div></div>
							
								   					
                                        </div>
                                    </div>
							
                                </div>
</div>
											
                                        </div>
                                    </div>
									
									<!--favourite end-->
									 <div id="navpills-5" class="tab-pane">
                                        <div class="row align-items-center">
                                            
                                            <div class="col-lg-12">
                           <div id="col_3">
                            <div class="card">
                                <div class="card-body">
                                            
								<div class="clearfix"></div>
									<p>No Data Found</p>
                                   
                           
                            
                       
                                   
                                </div>
                            </div>
							</div>
                            
                        </div>   
                                        </div>
                                    </div>
									
									
									 <div id="navpills-6" class="tab-pane">
                                        <div class="row align-items-center">
                                            
                                            <div class="col-lg-12">
                           <div id="col_3">
                            <div class="card">
                                <div class="card-body">
                                            
								<div class="clearfix"></div>
									<p>Lorem ipsum sit dolor</p>
                                   
                           
                            
                       
                                   
                                </div>
                            </div>
							</div>
                            
                        </div>   
                                        </div>
                                    </div>
									
                                </div>
              


                
               

               

              

                

            </div>
            <!-- #/ container -->
        </div>
        <!--**********************************
            Content body end
        ***********************************-->
          
                                    <!-- Modal -->
                                   
        
        <!--**********************************
            Footer start
        ***********************************-->
     <!-- <div class="footer">
            <div class="copyright">
                <p>Copyright &copy; Designed & Developed by <a href="https://themeforest.net/user/quixlab">Quixlab</a> 2018</p>
            </div>
        </div>-->
        <!--**********************************
            Footer end
        ***********************************-->
    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->
</section>
<script>

    // -------------------searchbox ------------------------
    $(document).ready(function(){  
       
      $('#username').keyup(function(){  
           var query = $(this).val(); 
           if(query.length > 3)  
           {  
                $.ajax({
                    url: base_url+"admin/instagramuserajax",
                    type: 'POST',
                    data: {username: query},
                    success: 
                    function(data){
                        console.log(data);  //as a debugging message.
                        $('#usernameList').fadeIn();  
                        $('#usernameList').html(data);
                    }
                });
           }  
      });  
      $(document).on('click', 'li', function(){  
           $('#username').val($(this).text());  
           $('#usernameList').fadeOut();  
      });  
    });  
    //----- search user--------------------
    $("form").submit(function(e){
        e.preventDefault();
        var username = $('#username').val();
        
        window.location.href = base_url+"admin/instagram/"+username;
    });
    //--------------------search box----------------------------
	Chart.defaults.global.elements.line.borderWidth = 4;
    Chart.defaults.global.elements.point.radius = 3;
    Chart.defaults.global.elements.point.borderWidth = 7;


    let followers_chart_context = document.getElementById('followers_chart').getContext('2d');

    let gradient = followers_chart_context.createLinearGradient(0, 0, 0, 250);
    gradient.addColorStop(0, 'rgba(43, 227, 155, 0.6)');
    gradient.addColorStop(1, 'rgba(43, 227, 155, 0.05)');

    new Chart(followers_chart_context, {
        type: 'line',
        data: {
            labels: [<?php echo "'".implode("','", array_reverse($map_dates))."'"; ?>],
            datasets: [{
                label: "Followers",
                data: [<?php echo implode(",", array_reverse($followers)); ?>],
                backgroundColor: gradient,
                borderColor: '#2BE39B',
                fill: true
            }]
        },
        options: {
            tooltips: {
                mode: 'index',
                intersect: false,
                callbacks: {
                    label: (tooltipItem, data) => {
                        let value = data.datasets[tooltipItem.datasetIndex].data[tooltipItem.index];

                        return `${number_format(value, 0, '.',  ',')} ${data.datasets[tooltipItem.datasetIndex].label}`;
                    }
                }
            },
            title: {
                text: "Followers evolution chart",
                display: true
            },
            legend: {
                display: false
            },
            responsive: true,
            maintainAspectRatio: false,
            scales: {
                yAxes: [{
                    gridLines: {
                        display: false
                    },
                    ticks: {
                        userCallback: (value, index, values) => {
                            if(Math.floor(value) === value) {
                                return number_format(value, 0, '.', ',');
                            }
                        }
                    }
                }],
                xAxes: [{
                    gridLines: {
                        display: false
                    }
                }]
            }
        }
    });

    let following_chart_context = document.getElementById('following_chart').getContext('2d');

    gradient1 = following_chart_context.createLinearGradient(0, 0, 0, 250);
    gradient1.addColorStop(0, 'rgba(62, 193, 255, 0.6)');
    gradient1.addColorStop(1, 'rgba(62, 193, 255, 0.05)');

    new Chart(following_chart_context, {
        type: 'line',
        data: {
            labels: [<?php echo "'".implode("','", array_reverse($map_dates))."'"; ?>],
            datasets: [{
                label: "Following",
                data: [<?php echo implode(",", array_reverse($following)); ?>],
                backgroundColor: gradient1,
                borderColor: '#3ec1ff',
                fill: true
            }]
        },
        options: {
            tooltips: {
                mode: 'index',
                intersect: false,
                callbacks: {
                    label: (tooltipItem, data) => {
                        let value = data.datasets[tooltipItem.datasetIndex].data[tooltipItem.index];

                        return `${number_format(value, 0, '.',  ',')} ${data.datasets[tooltipItem.datasetIndex].label}`;
                    }
                }
            },
            title: {
                text: "Following evolution chart",
                display: true
            },
            legend: {
                display: false
            },
            responsive: true,
            maintainAspectRatio: false,
            scales: {
                yAxes: [{
                    gridLines: {
                        display: false
                    },
                    ticks: {
                        userCallback: (value, index, values) => {
                            if(Math.floor(value) === value) {
                                return number_format(value, 0, '.',  ',');
                            }
                        }
                    }
                }],
                xAxes: [{
                    gridLines: {
                        display: false
                    }
                }]
            }
        }
    });

    let average_engagement_rate_chart_context = document.getElementById('average_engagement_rate_chart').getContext('2d');

    gradient2 = average_engagement_rate_chart_context.createLinearGradient(0, 0, 0, 250);
    gradient2.addColorStop(0, 'rgba(237, 73, 86, 0.4)');
    gradient2.addColorStop(1, 'rgba(237, 73, 86, 0.05)');

    let average_engagement_rate_chart = new Chart(average_engagement_rate_chart_context, {
        type: 'line',
        data: {
            labels: [<?php echo "'".implode("','", array_reverse($map_dates))."'"; ?>],
            datasets: [{
                data: [<?php echo implode(",", array_reverse($average_engagement_rate)); ?>],
                backgroundColor: gradient2,
                borderColor: '#ED4956',
                fill: true
            }]
        },
        options: {
            tooltips: {
                mode: 'index',
                intersect: false
            },
            title: {
                text: "Average Engagement Rate",
                display: true
            },
            legend: {
                display: false
            },
            responsive: true,
            maintainAspectRatio: false,
            scales: {
                yAxes: [{
                    gridLines: {
                        display: false
                    },
                    ticks: {
                        userCallback: (value, index, values) => {
                            if(Math.floor(value) === value) {
                                return number_format(value, 0, '.',  ',');
                            }
                        }
                    }
                }],
                xAxes: [{
                    gridLines: {
                        display: false
                    }
                }]
            }
        }
    });

    new Chart(document.getElementById('media_chart').getContext('2d'), {
        type: 'line',
        data: {
            labels: <?= $media_chart['labels'] ?>,
            datasets: [{
                label: "Likes",
                data: <?= $media_chart['likes'] ?>,
                backgroundColor: '#ED4956',
                borderColor: '#ED4956',
                fill: false
            },
                {
                    label: "Comments",
                    data: <?= $media_chart['comments'] ?>,
                    backgroundColor: '#2caff7',
                    borderColor: '#2caff7',
                    fill: false
                },
                {
                    label: "Caption Word Count",
                    data: <?= $media_chart['captions'] ?>,
                    backgroundColor: '#25f7b1',
                    borderColor: '#25f7b1',
                    fill: false
                }]
        },
        options: {
            tooltips: {
                mode: 'index',
                intersect: false,
                callbacks: {
                    label: (tooltipItem, data) => {
                        let value = data.datasets[tooltipItem.datasetIndex].data[tooltipItem.index];

                        return `${number_format(value, 0, '.',  ',')} ${data.datasets[tooltipItem.datasetIndex].label}`;
                    }
                }
            },
            title: {
                display: false
            },
            responsive: true,
            maintainAspectRatio: false,
            scales: {
                yAxes: [{
                    gridLines: {
                        display: false
                    },
                    ticks: {
                        userCallback: (value, index, values) => {
                            if(Math.floor(value) === value) {
                                return number_format(value, 0, '.',  ',');
                            }
                        }
                    }
                }],
                xAxes: [{
                    gridLines: {
                        display: false
                    }
                }]
            }
        }
    });
</script>