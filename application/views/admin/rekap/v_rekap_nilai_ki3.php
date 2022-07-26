<div id="page_content">
    <div id="page_content_inner">

    <div class="uk-grid uk-grid-medium" data-uk-grid-margin>
            <div class="uk-width-1-1">

                <div class="md-card">
                <div class="md-card-content">
                    <div class="uk-grid">
                        <div class="uk-width-medium-7-10">
                            <h3>Penilaian KI-3 ( Pengetahuan )</h3>
                        </div>
                        <div class="uk-width-medium-3-10 uk-text-right">
                        </div>
                    </div><hr>

                    <table class="uk-table">
                        <tr>
                            <td>Mata Pelajaran</td>
                            <td>:</td>
                            <?php foreach ($mapel as $m) {
    echo '<td>' . $m->nm_mapel . '</td>';
    ?>
                        </tr>
                        <tr>
                            <td>Kelas / Semester</td>
                            <td>:</td>
                        <?php foreach ($taj as $tj) {
        foreach ($kelas as $kla) {
            echo '<td>' . $kla->nm_kelas . ' /';
            if ($tj->smt == '1') {
                echo "Ganjil";
            } else {
                echo "Genap";
            }
            echo '</td>';
            ?>
                        </tr>
                        <tr>
                            <td>Tahun Pelajaran</td>
                            <td>:</td>
                            <?php
echo '<td>' . substr($tj->nm_tahunajaran, 0, 9) . '</td>';
            ?>
                        </tr>
                        <tr>
                            <td>KKM</td>
                            <td>:</td>
                            <td><?=$m->ki_3?></td>
                        </tr>
                    <?php }}}?>
                    </table>

                    <table>
                        <tr>
                            <td><b>Keterangan</b></td>
                        </tr>
                        <tr>
                            <td>PH</td>
                            <td>:</td>
                            <td>Penilaian Harian</td>
                        </tr>
                        <tr>
                            <td>NPTS</td>
                            <td>:</td>
                            <td>Penilaian Tengah Semester</td>
                        </tr>
                        <tr>
                            <td>NPAS</td>
                            <td>:</td>
                            <td>Penilaian Akhir Semester</td>
                        </tr>
                        <tr>
                            <td>NA KD</td>
                            <td>:</td>
                            <td>Nilai Akhir Kompetensi Dasar</td>
                        </tr>
                    </table>
                    <div class="uk-text-right" id="show_btn_nilai_ki3">
                    </div>

                       <div style="display: none; margin-top: 5px;" id="alert-nilai-ki3">
                        <div class="uk-alert uk-alert-success" data-uk-alert>
                                    <a href="#" class="uk-alert-close uk-close"></a>
                                            <i class="fas fa-check-circle">&nbsp;</i>
                                            Successfully !
                                </div>
                    </div>

                    </div>
                </div>
                <div id="show_nilai_ki3_b"></div>
                <div id="show_nilai_ki3_c"></div>
                <div id="show_nilai_ki3"></div>

            </div>
        </div>
    </div>
</div>

<script>

        tampil_btn_nilai_ki3();
        function tampil_btn_nilai_ki3() {
                $.ajax({
                    type : 'ajax',
                    url : '<?=base_url('proses/get_btn_nilai_ki3/' . $kl . '/' . $id . '/' . $ta)?>',
                    success: function(data) {
                        $("#show_btn_nilai_ki3").html(data);
                    }
                })
            }

        tampil_nilai_ki3();
        function tampil_nilai_ki3() {
                $.ajax({
                    type : 'ajax',
                    url : '<?=base_url('proses/get_nilai_ki3/' . $kl . '/' . $id . '/' . $ta)?>',
                    success: function(data) {
                      console.log(data);
                        $("#show_nilai_ki3").html(data);
                    }
                })
            }

        tampil_nilai_ki3_b();
        function tampil_nilai_ki3_b() {
                $.ajax({
                    type : 'ajax',
                    url : '<?=base_url('proses/get_nilai_ki3_b/' . $kl . '/' . $id . '/' . $ta)?>',
                    success: function(data) {
                        $("#show_nilai_ki3_b").html(data);
                    }
                })
            }

        tampil_nilai_ki3_c();
        function tampil_nilai_ki3_c() {
                $.ajax({
                    type : 'ajax',
                    url : '<?=base_url('proses/get_nilai_ki3_c/' . $kl . '/' . $id . '/' . $ta)?>',
                    success: function(data) {
                        $("#show_nilai_ki3_c").html(data);
                    }
                })
            }

        function submit_nilai_ki3() {

            // NILAI_KI3

            var deskripsi = $("textarea[name='deskripsi[]']").map(function()
            {
              return $(this).val();
            }).get();

            var total_na = $("input[name='total_na[]']").map(function()
            {
              return $(this).val();
            }).get();

            var siswa_ni3 = $("input[name='siswa_ni3[]']").map(function()
            {
              return $(this).val();
            }).get();

            var kelas_ni3 = $("input[name='kelas_ni3[]']").map(function()
            {
              return $(this).val();
            }).get();

            var ta_ni3 = $("input[name='ta_ni3[]']").map(function()
            {
              return $(this).val();
            }).get();

            var mapel_ni3 = $("input[name='mapel_ni3[]']").map(function()
            {
              return $(this).val();
            }).get();

            //NKI3

            var mapel_nki3 = $("input[name='mapel_nki3[]']").map(function()
            {
              return $(this).val();
            }).get();

            var kode = $("input[name='id_nki3[]']").map(function()
            {
              return $(this).val();
            }).get();

            var ph = $("input[name='ph[]']").map(function()
            {
              return $(this).val();
            }).get();

            var npts = $("input[name='npts[]']").map(function()
            {
              return $(this).val();
            }).get();

            var npas = $("input[name='npas[]']").map(function()
            {
              return $(this).val();
            }).get();

            var na_kd = $("input[name='na_kd[]']").map(function()
            {
              return $(this).val();
            }).get();

            var siswa_nki3 = $("input[name='siswa_nki3[]']").map(function()
            {
              return $(this).val();
            }).get();

            var kelas_nki3 = $("input[name='kelas_nki3[]']").map(function()
            {
              return $(this).val();
            }).get();

            var ta_nki3 = $("input[name='ta_nki3[]']").map(function()
            {
              return $(this).val();
            }).get();


            $.ajax({
            type : 'post',
            url : '<?=base_url('proses/tambah_nilai_ki3')?>',
            data : {

                deskripsi:deskripsi,
                total_na:total_na,
                siswa_ni3:siswa_ni3,
                kelas_ni3:kelas_ni3,
                ta_ni3:ta_ni3,
                mapel_nki3:mapel_nki3,
                mapel_ni3:mapel_ni3,
                kode:kode,
                ph:ph,
                npts:npts,
                npas:npas,
                na_kd:na_kd,
                siswa_nki3:siswa_nki3,
                kelas_nki3:kelas_nki3,
                ta_nki3:ta_nki3,
            },
            success: function(data) {
              tampil_nilai_ki3();
              tampil_btn_nilai_ki3();
              tampil_nilai_ki3_b();
              tampil_nilai_ki3_c();
              $("#alert-nilai-ki3").slideDown("slow");
              $("#alert-nilai-ki3").slideUp("slow");
            }
        })


        }


        function ubah_nilai_ki3() {

            // NILAI_KI3

            var deskripsi = $("textarea[name='deskripsi[]']").map(function()
            {
              return $(this).val();
            }).get();

            var id_ni3 = $("input[name='id_ni3[]']").map(function()
            {
              return $(this).val();
            }).get();

            var total_na = $("input[name='total_na[]']").map(function()
            {
              return $(this).val();
            }).get();


            //NKI3

            var id_nki3 = $("input[name='id_nki3[]']").map(function()
            {
              return $(this).val();
            }).get();

            var ph = $("input[name='ph[]']").map(function()
            {
              return $(this).val();
            }).get();

            var npts = $("input[name='npts[]']").map(function()
            {
              return $(this).val();
            }).get();

            var npas = $("input[name='npas[]']").map(function()
            {
              return $(this).val();
            }).get();

            var na_kd = $("input[name='na_kd[]']").map(function()
            {
              return $(this).val();
            }).get();


            $.ajax({
            type : 'post',
            url : '<?=base_url('proses/update_nilai_ki3')?>',
            data : {
                deskripsi:deskripsi,
                ph:ph,
                total_na:total_na,
                npts:npts,
                npas:npas,
                na_kd:na_kd,
                id_nki3:id_nki3,
                id_ni3:id_ni3,
            },
            success: function(data) {
              tampil_nilai_ki3();
              tampil_btn_nilai_ki3();
              $("#alert-nilai-ki3").slideDown("slow");
              $("#alert-nilai-ki3").slideUp("slow");
            }
        })


        }

        function hapus_nilai_ki3() {

         var id_a = $("input[name='id_ni3[]']").map(function()
            {
              return $(this).val();
            }).get();

        var id_b = $("input[name='id_nki3[]']").map(function()
            {
              return $(this).val();
            }).get();

        swal({
                title: "Yakin Menghapus Data?",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
            .then((willDelete) => {
                if (willDelete) {
                    $.ajax({
                        type : 'POST',
                        url : '<?php echo base_url('proses/hapus_nilai_ki3') ?>',
                        data : {
                            id_a:id_a,
                            id_b:id_b,
                        },
                        success: function(data) {
                                swal("Berhasil Menghapus Data", {
                                    icon: "success",
                                })
                                tampil_nilai_ki3();
                                tampil_btn_ki3();
                        }
                    })
                }
             });

    }


           function key_ph(kd, id) {
                var ph = parseInt($("#ph-"+kd+"-"+id).val());
                var npts = parseInt($("#npts-"+kd+"-"+id).val());
                var npas = parseInt($("#npas-"+kd+"-"+id).val());

                var total = ((ph*2)+npts+npas)/4;
                $("#na_kd-"+kd+"-"+id).val(total);

                var num = $("#total_k3-"+id).val();
                var arr = [];
                for (var i = 1; i <= num; i++) {
                    arr.push(parseInt($(".na_kd-"+i+"-"+id).val()))
                }

                function getSum(total, num) {
                    return total + num;
                    }

                var ar = arr.reduce(getSum) / num;
                var res = ar.toFixed(0);
                var total_na = $("#total_na-"+id).val(res);

            }

            function key_npts(kd, id) {
                var ph = parseInt($("#ph-"+kd+"-"+id).val());
                var npts = parseInt($("#npts-"+kd+"-"+id).val());
                var npas = parseInt($("#npas-"+kd+"-"+id).val());

                var total = ((ph*2)+npts+npas)/4;
                $("#na_kd-"+kd+"-"+id).val(total);

                var num = $("#total_k3-"+id).val();
                var arr = [];
                for (var i = 1; i <= num; i++) {
                    arr.push(parseInt($(".na_kd-"+i+"-"+id).val()))
                }

                function getSum(total, num) {
                    return total + num;
                    }

                var ar = arr.reduce(getSum) / num;
                var res = ar.toFixed(0);
                var total_na = $("#total_na-"+id).val(res);
            }

            function key_npas(kd, id) {
                var ph = parseInt($("#ph-"+kd+"-"+id).val());
                var npts = parseInt($("#npts-"+kd+"-"+id).val());
                var npas = parseInt($("#npas-"+kd+"-"+id).val());

                var total = ((ph*2)+npts+npas)/4;
                $("#na_kd-"+kd+"-"+id).val(total);

                var num = $("#total_k3-"+id).val();
                var arr = [];
                for (var i = 1; i <= num; i++) {
                    arr.push(parseInt($(".na_kd-"+i+"-"+id).val()))
                }

                function getSum(total, num) {
                    return total + num;
                    }

                var ar = arr.reduce(getSum) / num;
                var res = ar.toFixed(0);
                var total_na = $("#total_na-"+id).val(res);
            }





</script>

