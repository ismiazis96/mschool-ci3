<!DOCTYPE html>
<html lang="en">
<head>
    <?php
        function limit_words($string, $word_limit){
            $words = explode(" ",$string);
            return implode(" ",array_splice($words,0,$word_limit));
        }
    ?>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title><?php echo $title;?></title>
    <link rel="shorcut icon" href="<?php echo base_url().'theme/images/logo.jpg'?>">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/bootstrap.min.css'?>">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/font-awesome.min.css'?>">
    <!-- Simple Line Font -->
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/simple-line-icons.css'?>">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/owl.carousel.min.css'?>">
    <!-- Main CSS -->
    <link href="<?php echo base_url().'theme/css/style.css'?>" rel="stylesheet">
    <!--Social Share-->
    <link href="<?php echo base_url().'theme/css/jssocials.css'?>" rel="stylesheet">
    <link href="<?php echo base_url().'theme/css/jssocials-theme-flat.css'?>" rel="stylesheet">
    <style>
    	.sharePopup{
    		font-size: 11px;
    	}
      .sharePopup a{
    		font-size: 11px;
        color: #fff;
        text-decoration: none;
    	}
    </style>

</head>

<body>
  <!--============================= HEADER =============================-->
  <?php 
$this->load->view('depan/v_topbar');
 ?>
 
     <!-- NAVBAR -->
<?php 
$this->load->view('depan/v_navbar');
 ?>
    <section>
</section>
<!--//END HEADER -->
<!--============================= BLOG =============================-->
<section class="blog-wrap">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="blog-img_block">
                    <img src="<?php echo base_url().'assets/images/'.$image?>" class="img-fluid" alt="blog-img">
                    <div class="blog-date">
                        <span><?php echo $tanggal;?></span>
                    </div>
                </div>
                <div class="blog-tiltle_block">
                    <h4><a href="<?php echo site_url('artikel/'.$slug);?>"><?php echo $title;?></a></h4>
                    <h6> <a href="#"><i class="fa fa-user" aria-hidden="true"></i><span><?php echo $author;?></span> </a>  |   <a href="#"><i class="fa fa-tags" aria-hidden="true"></i><span><?php echo $kategori;?></span></a></h6>
                    <?php echo $blog;?>
                </div>

                <div class="blog-tiltle_block">

                    <div class="blog-icons">
                        <div class="blog-share_block">
                          <div class="pull-left"><h5>Bagikan Ke:</h5></div>
                          <div class="sharePopup"></div>
                        </div>
                    </div>
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs blogpost-tab-wrap" role="tablist">
                        <li class="nav-item blogpost-nav-tab">
                            <a class="nav-link active" data-toggle="tab" href="#comments" role="tab">Komentar</a>
                        </li>
                        <li class="nav-item blogpost-nav-tab">
                            <a class="nav-link" data-toggle="tab" href="#write-comment" role="tab">Tinggalkan Komentar</a>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                    <?php echo $this->session->flashdata('msg');?>
                    <div class="blogpost-tabs">
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane active" id="comments" role="tabpanel">
                              <?php
                                  $colors = array(
                                      '#ff9e67',
                                      '#10bdff',
                                      '#14b5c7',
                                      '#f98182',
                                      '#8f9ce2',
                                      '#ee2b33',
                                      '#d4ec15',
                                      '#613021',
                                  );
                                  foreach ($show_komentar->result() as $row) :
                                  shuffle($colors);
                                ?>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-2">
                                                <div class="blodpost-tab-img" style="background-color:<?php echo reset($colors);?>;width: 65px;height: 65px;border-radius:50px 50px 50px 50px;">
                                                    <center><h2 style="padding-top:20%;color:#fff;"><?php echo substr($row->komentar_nama,0,1);?></h2></center>
                                                </div>
                                            </div>
                                            <div class="col-md-10">
                                                <div class="blogpost-tab-description">
                                                    <h6><?php echo $row->komentar_nama;?></h6><small><em><?php echo date("d M Y H:i", strtotime($row->komentar_tanggal));?></em></small>
                                                    <p><?php echo $row->komentar_isi;?></p>
                                                </div>
                                                <hr>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                  <?php
                					            $komentar_id=$row->komentar_id;
                					            $query=$this->db->query("SELECT * FROM tbl_komentar WHERE komentar_status='1' AND komentar_parent='$komentar_id' ORDER BY komentar_id ASC");
                					            foreach ($query->result() as $res) :
                                        shuffle($colors);
                					        ?>
                                  <div class="row">
                                      <div class="col-md-12 offset-md-1">
                                          <div class="row">
                                              <div class="col-md-2">
                                                <div class="blodpost-tab-img" style="background-color:<?php echo reset($colors);?>;width: 65px;height: 65px;border-radius:50px 50px 50px 50px;">
                                                    <center><h2 style="padding-top:20%;color:#fff;"><?php echo substr($res->komentar_nama,0,1);?></h2></center>
                                                </div>
                                              </div>
                                              <div class="col-md-9">
                                                  <div class="blogpost-tab-description">
                                                      <h6><?php echo $res->komentar_nama;?></h6><small><em><?php echo date("d M Y H:i", strtotime($res->komentar_tanggal));?></em></small>
                                                      <p><?php echo $res->komentar_isi;?></p>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <?php endforeach;?>
                                <?php endforeach;?>
                            </div>
                            <div class="tab-pane" id="write-comment" role="tabpanel">
                                <form action="<?php echo site_url('blog/komentar');?>" method="post">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label>Nama</label>
                                                <input type="text" class="form-control" name="nama" placeholder="Nama Lengkap" required>
                                            </div>
                                            <!-- // end .form-group -->
                                        </div>
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label>Email</label>
                                                <input type="email" class="form-control" name="email" placeholder="Email" required>
                                            </div>
                                            <!-- // end .form-group -->
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label>Komentar Anda</label>
                                                <textarea class="form-control" name="komentar" rows="6" required> </textarea>
                                            </div>
                                            <!-- // end .form-group -->
                                        </div>
                                        <div class="col-12">
                                            <input type="hidden" name="id" value="<?php echo $id;?>" required>
                                            <button type="submit" class="btn btn-warning" />Kirim Komentar</button>
                                        </div>
                                        <!-- // end .col-12 -->
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
              <form action="<?php echo site_url('blog/search');?>" method="get">
                  <input type="text" name="keyword" placeholder="Search" class="blog-search" required>
                  <button type="submit" class="btn btn-warning btn-blogsearch">SEARCH</button>
              </form>
                <div class="blog-category_block">
                    <h3>Kategori</h3>
                    <ul>
                      <?php foreach ($category->result() as $row) : ?>
                        <li><a href="<?php echo site_url('blog/kategori/'.str_replace(" ","-",$row->kategori_nama));?>"><?php echo $row->kategori_nama;?><i class="fa fa-caret-right" aria-hidden="true"></i></a></li>
                      <?php endforeach;?>
                    </ul>
                </div>
                <div class="blog-featured_post">
                    <h3>Populer</h3>
                  <?php foreach ($populer->result() as $row) :?>
                    <div class="blog-featured-img_block">
                        <img width="35%" src="<?php echo base_url().'assets/images/'.$row->tulisan_gambar;?>" class="img-fluid" alt="blog-featured-img">
                        <h5><a href="<?php echo site_url('artikel/'.$row->tulisan_slug);?>"><?php echo limit_words($row->tulisan_judul,3).'...';?></a></h5>
                        <p><?php echo limit_words($row->tulisan_isi,5).'...';?></p>
                    </div>
                    <hr>
                  <?php endforeach;?>
                </div>

            </div>
        </div>
    </div>
</section>
<!--//END BLOG -->
<!--============================= FOOTER =============================-->
    <?php 
    $this->load->view('depan/v_footer');
     ?>
        <!--//END FOOTER -->
        <!-- jQuery, Bootstrap JS. -->
        <script src="<?php echo base_url().'theme/js/jquery.min.js'?>"></script>
        <script src="<?php echo base_url().'theme/js/tether.min.js'?>"></script>
        <script src="<?php echo base_url().'theme/js/bootstrap.min.js'?>"></script>
        <!-- Plugins -->
        <script src="<?php echo base_url().'theme/js/owl.carousel.min.js'?>"></script>
        <script src="<?php echo base_url().'theme/js/validate.js'?>"></script>
        <script src="<?php echo base_url().'theme/js/tweetie.min.js'?>"></script>
        <!-- Subscribe -->
        <script src="<?php echo base_url().'theme/js/subscribe.js'?>"></script>
        <!-- Script JS -->
        <script src="<?php echo base_url().'theme/js/script.js'?>"></script>
        <script src="<?php echo base_url().'theme/js/jssocials.js'?>"></script>
        <script>
          $(document).ready(function(){
            $(".sharePopup").jsSocials({
                  showCount: true,
            			showLabel: true,
            			shareIn: "popup",
            			shares: [
            			{ share: "twitter", label: "Twitter" },
            			{ share: "facebook", label: "Facebook" },
            			{ share: "googleplus", label: "Google+" },
            			{ share: "linkedin", label: "Linked In" },
                  { share: "pinterest", label: "Pinterest" }
            			]
                });
          });
        </script>
    </body>

    </html>
