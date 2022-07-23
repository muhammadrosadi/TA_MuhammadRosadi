<!doctype html>
<!--[if lte IE 9]> <html class="lte-ie9" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Remove Tap Highlight on Windows Phone IE -->
    <meta name="msapplication-tap-highlight" content="no"/>

    <link rel="icon" type="image/png" href="<?php echo base_url() ?>/images/logo-kalsel1.png">
    <title>E-Raport K-13</title>

    <!-- uikit -->
    <link rel="stylesheet" href="<?php echo base_url() ?>/assets/bower_components/uikit/css/uikit.almost-flat.min.css" media="all">

    <!-- flag icons -->
    <link rel="stylesheet" href="<?php echo base_url() ?>/assets/assets/icons/flags/flags.min.css" media="all">

    <!-- altair admin -->
    <link rel="stylesheet" href="<?php echo base_url() ?>/assets/assets/css/main.min.css" media="all">

     <!-- fontawesome icon -->
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/fonts/fontawesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/fonts/feather/css/feather.css">
        <script type="text/javascript" src="<?php echo base_url() ?>assets/jquery/jquery-1.11.2.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url() ?>assets/Chart.js"></script>
            <!-- kendo UI -->
    <!-- <link rel="stylesheet" href="<?php echo base_url() ?>assets/bower_components/kendo-ui/styles/kendo.common-material.min.css"/>
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/bower_components/kendo-ui/styles/kendo.material.min.css"/> -->
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/select2.min.css" media="all">
    <style>

        .table-responsive {
            overflow-x:auto;
        }
        .center {
          text-align: center;
        }

        .my-custom-scrollbar {
            position: relative;
            height: 200px;
            overflow: auto;
        }
        .table-wrapper-scroll-y {
            display: block;
        }

        .top-menu-title {
            padding-left: 1.5rem;
            padding-top: 1rem;
        }

    </style>
<?php $guru = $this->db->query("SELECT * FROM tb_guru WHERE akun=" . $akun['id_akun'] . " ")->result();?>

<?php
function tgl_indo($date) {
    $BulanIndo = ["Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember"];

    $tahun  = substr($date, 0, 4);
    $bulan  = substr($date, 5, 2);
    $tgl    = substr($date, 8, 2);
    $result = $tgl . "-" . $BulanIndo[(int) $bulan - 1] . "-" . $tahun;
    return ($result);
}

?>
<?php

function hari_ini() {
    $hari = date("D");

    switch ($hari) {
        case 'Mon':
            $hari_ini = "Senin";
            break;

        case 'Tue':
            $hari_ini = "Selasa";
            break;

        case 'Wed':
            $hari_ini = "Rabu";
            break;

        case 'Thu':
            $hari_ini = "Kamis";
            break;

        case 'Fri':
            $hari_ini = "Jum'at";
            break;

        case 'Sat':
            $hari_ini = "Sabtu";
            break;

        case 'Sun':
            $hari_ini = "Minggu";
            break;

        default:
            $hari_ini = "Tidak di ketahui";
            break;
    }

    return $hari_ini;
}

function array_rank($in) {
    # Keep input array "x" and replace values with rank.
    # This preserves the order. Working on a copy called $x
    # to set the ranks.
    // print "input\n";
    // print_r($in);
    $x = $in;
    arsort($x);
    // print "sorted\n";
    // print_r($x);
    # Initival values
    $rank       = 0;
    $hiddenrank = 0;
    $hold       = null;
    foreach ($x as $key => $val) {
        # Always increade hidden rank
        $hiddenrank += 1;
        # If current value is lower than previous:
        # set new hold, and set rank to hiddenrank.
        if (is_null($hold) || $val < $hold) {
            $rank = $hiddenrank;
            $hold = $val;
        }
        # Set rank $rank for $in[$key]
        $in[$key] = $rank;
    }
    // print "ranking result\n";
    // print_r($in);
    return $in;
}

$id_akun     = ($this->session->userdata['logged_in']['id_akun']);
$account = $this->m_admin->cekdata($id_akun)->row_array();
$siswa = $this->db->where('akun', $id_akun)->get('tb_siswa')->row();
$gr = $this->db->where('akun', $id_akun)->get('tb_guru')->row();
?>

</head>
    <body class=" sidebar_main_open sidebar_main_swipe" onload="tampilkanwaktu();setInterval('tampilkanwaktu()', 1000);">

    <!-- main header -->
    <header id="header_main">
        <div class="header_main_content">
            <nav class="uk-navbar">

                <!-- main sidebar switch -->
                <a href="#" id="sidebar_main_toggle" class="sSwitch sSwitch_left">
                    <span class="sSwitchIcon"></span>
                </a>

                <!-- secondary sidebar switch -->
                <a href="#" id="sidebar_secondary_toggle" class="sSwitch sSwitch_right sidebar_secondary_check">
                    <span class="sSwitchIcon"></span>
                </a>
                <div class="uk-navbar-flip">
                    <ul class="uk-navbar-nav user_actions">
                        <li data-uk-dropdown="{mode:'click',pos:'bottom-right'}">
                            <a href="#" class="user_action_image">
                                <?php if($account['level'] == 1): ?>
                                    <img class="md-user-image" src="<?php echo base_url() ?>images/admin.png" alt=""/>
                                <?php elseif($account['level'] == 2): ?>
                                    <img class="md-user-image" src="<?php echo base_url() ?>images/guru/<?=$gr->foto_guru?>" alt=""/>
                                <?php elseif($account['level'] == 3): ?>
                                    <img class="md-user-image" src="<?php echo base_url() ?>images/siswa/<?=$siswa->foto_siswa?>" alt=""/>
                                <?php endif ?>
                            </a>
                            <div class="uk-dropdown uk-dropdown-small">
                                <ul class="uk-nav js-uk-prevent">
                                    <li><a href="<?php echo base_url('login/logout') ?>">Logout</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </header><!-- main header end -->
    <!-- main sidebar -->
    <aside id="sidebar_main">

        <!-- <div class="sidebar_main_header">
            <div class="sidebar_logo">
                <a href="#" class="sSidebar_hide"><b><h4 style="color: ;">SDN Jejangkit Pasar</h4></b></a>
                <a href="#" class="sSidebar_show"><img src="<?php echo base_url() ?>/assets/assets/img/logo_main_small.png" alt="" height="32" width="32"/></a>
            </div>
        </div> -->

        <div class="menu_section">
            <div class="top-menu-title">
                <h4>E-Raport K-13</h4>
            </div>
            <ul>

                <li class="<?=($active == 'dashboard') ? 'current_section' : ''?>">
                    <a href="<?php echo base_url('admin') ?>">
                        <span class="menu_icon"><i class="material-icons">&#xE871;</i></span>
                        <span class="menu_title">Dashboard</span>
                    </a>
                </li>

            <?php if ($akun['level'] == '1') {?>
                <li class="<?=($active == 'mapel') ? 'current_section' : ''?>">
                    <a href="<?php echo base_url('admin/mapel') ?>">
                        <span class="menu_icon"><i class="material-icons">list</i></span>
                        <span class="menu_title">Mata Pelajaran</span>
                    </a>
                </li>
            <?php }?>

            <?php if ($akun['level'] == '1') {?>
                <li class="<?=($active == 'ekskul_siswa') ? 'current_section' : ''?>">
                    <a href="<?php echo base_url('admin/ekskul_siswa') ?>">
                        <span class="menu_icon"><i class="material-icons">list</i></span>
                        <span class="menu_title">Ekstrakurikuler Siswa</span>
                    </a>
                </li>
            <?php }?>

            <?php if ($akun['level'] == '1') {?>
                <li class="<?=($active == 'guru') ? 'current_section' : ''?>">
                    <a href="<?php echo base_url('admin/guru') ?>">
                        <span class="menu_icon"><i class="material-icons">group</i></span>
                        <span class="menu_title">Guru</span>
                    </a>
                </li>
            <?php }?>

<?php if ($akun['level'] == 3) {?>
    <li class="<?=($active == 'siswa') ? 'current_section' : ''?>">
        <a href="<?php echo base_url('admin/detailsiswa/' . $siswa->id_siswa) ?>">
            <span class="menu_icon"><i class="material-icons">account_circle</i></span>
            <span class="menu_title">Profil & Nilai</span>
        </a>
    </li>
    <?php }?>

<?php if ($akun['level'] == '2') {?>
            <li class="<?=($active == 'guru') ? 'current_section' : ''?>">
                    <a href="<?php echo base_url('admin/detailguru/' . $gr->id_guru) ?>">
                        <span class="menu_icon"><i class="material-icons">account_circle</i></span>
                        <span class="menu_title">Profil</span>
                    </a>
                </li>
            <?php }?>

<?php if ($akun['level'] == '2' || $akun['level'] == 1) {?>

                <li class="<?=($active == 'siswa') ? 'current_section' : ''?>">
                    <a href="<?php echo base_url('admin/siswa') ?>">
                        <span class="menu_icon"><i class="material-icons">group</i></span>
                        <span class="menu_title">Siswa</span>
                    </a>
                </li>

                <li class="<?=($active == 'naikkelas') ? 'current_section' : ''?>">
                    <a href="<?php echo base_url('admin/naikkelas') ?>">
                        <span class="menu_icon"><i class="material-icons">trending_up</i></span>
                        <span class="menu_title">Kenaikan Kelas</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="menu_icon"><i class="material-icons">list</i></span>
                        <span class="menu_title">Deskripsi Kompetensi</span>
                    </a>
                    <ul>
                        <li class="<?=($active == 'desk_ki3') ? 'act_item' : ''?>">
                            <a href="<?=base_url('admin/menu_desk_ki3')?>"><span class="menu_icon"><i class="material-icons">keyboard_arrow_right</i></span>&nbsp;KI-3 Pengetahuan</a>
                        </li>
                        <li class="<?=($active == 'desk_ki4') ? 'act_item' : ''?>">
                            <a href="<?=base_url('admin/menu_desk_ki4')?>"><span class="menu_icon"><i class="material-icons">keyboard_arrow_right</i></span>&nbsp;KI-4 Keterampilan</a>
                        </li>
                    </ul>
                </li>
                <?php }?>

            </ul>
        </div>

    </aside><!-- main sidebar end -->
