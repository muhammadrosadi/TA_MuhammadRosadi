 <!-- google web fonts -->
    <script>
        WebFontConfig = {
            google: {
                families: [
                    'Source+Code+Pro:400,700:latin',
                    'Roboto:400,300,500,700,400italic:latin'
                ]
            }
        };
        (function() {
            var wf = document.createElement('script');
            wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
            '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
            wf.type = 'text/javascript';
            wf.async = 'true';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(wf, s);
        })();
    </script>


        <script>
    tampilkanwaktu();
    function tampilkanwaktu() {

        var time = new Date();
        var sh = time.getHours() + "";
        var sm = time.getMinutes() + "";
        var ss = time.getSeconds() + "";
    }
        </script>

    <script src="<?php echo base_url() ?>assets/select2.min.js"></script>

    <!-- common functions -->
    <script src="<?php echo base_url() ?>/assets/assets/js/common.min.js"></script>
    <!-- uikit functions -->
    <script src="<?php echo base_url() ?>/assets/assets/js/uikit_custom.min.js"></script>
    <!-- altair common functions/helpers -->
    <script src="<?php echo base_url() ?>assets/assets/js/altair_admin_common.min.js"></script>
    <!-- datatables -->
    <script src="<?php echo base_url() ?>assets/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <!-- datatables colVis-->
    <script src="<?php echo base_url() ?>assets/bower_components/datatables-colvis/js/dataTables.colVis.js"></script>
    <!-- datatables tableTools-->
    <script src="<?php echo base_url() ?>assets/bower_components/datatables-tabletools/js/dataTables.tableTools.js"></script>
    <!-- datatables custom integration -->
    <script src="<?php echo base_url() ?>assets/assets/js/custom/datatables_uikit.min.js"></script>

    <!--  datatables functions -->
    <script src="<?php echo base_url() ?>assets/assets/js/pages/plugins_datatables.min.js"></script>
    <!-- sweet alert Js -->
    <script src="<?php echo base_url() ?>assets/assets/sweetalert/js/sweetalert.min.js"></script>
    <script src="<?php echo base_url() ?>assets/assets/sweetalert/js/ac-alert.js"></script>

    <!-- inputmask-->
    <script src="<?php echo base_url() ?>assets/bower_components/jquery.inputmask/dist/jquery.inputmask.bundle.js"></script>

        <!-- kendo UI -->
    <script src="<?php echo base_url() ?>assets/assets/js/kendoui_custom.min.js"></script>

    <!--  kendoui functions -->
    <script src="<?php echo base_url() ?>assets/assets/js/pages/kendoui.min.js"></script>

    <!--  forms advanced functions -->
    <!-- <script src="<?php echo base_url() ?>assets/assets/js/pages/forms_advanced.min.js"></script> -->
    <!--  user edit functions -->
    <script src="<?php echo base_url() ?>assets/assets/js/pages/page_user_edit.min.js"></script>
    <!-- file input -->
    <script src="<?php echo base_url() ?>assets/assets/js/custom/uikit_fileinput.min.js"></script>


    <script>
        $(function() {
            // enable hires images
            altair_helpers.retina_images();
            // fastClick (touch devices)
            if(Modernizr.touch) {
                FastClick.attach(document.body);
            }
        });
    </script>

    <script>
        $(function() {
            var $switcher = $('#style_switcher'),
                $switcher_toggle = $('#style_switcher_toggle'),
                $theme_switcher = $('#theme_switcher'),
                $mini_sidebar_toggle = $('#style_sidebar_mini'),
                $boxed_layout_toggle = $('#style_layout_boxed'),
                $accordion_mode_toggle = $('#accordion_mode_main_menu'),
                $body = $('body');


            $switcher_toggle.click(function(e) {
                e.preventDefault();
                $switcher.toggleClass('switcher_active');
            });

            $theme_switcher.children('li').click(function(e) {
                e.preventDefault();
                var $this = $(this),
                    this_theme = $this.attr('data-app-theme');

                $theme_switcher.children('li').removeClass('active_theme');
                $(this).addClass('active_theme');
                $body
                    .removeClass('app_theme_a app_theme_b app_theme_c app_theme_d app_theme_e app_theme_f app_theme_g app_theme_h app_theme_i')
                    .addClass(this_theme);

                if(this_theme == '') {
                    localStorage.removeItem('altair_theme');
                } else {
                    localStorage.setItem("altair_theme", this_theme);
                }

            });

            // hide style switcher
            $document.on('click keyup', function(e) {
                if( $switcher.hasClass('switcher_active') ) {
                    if (
                        ( !$(e.target).closest($switcher).length )
                        || ( e.keyCode == 27 )
                    ) {
                        $switcher.removeClass('switcher_active');
                    }
                }
            });

            // get theme from local storage
            if(localStorage.getItem("altair_theme") !== null) {
                $theme_switcher.children('li[data-app-theme='+localStorage.getItem("altair_theme")+']').click();
            }


        // toggle mini sidebar

            // change input's state to checked if mini sidebar is active
            if((localStorage.getItem("altair_sidebar_mini") !== null && localStorage.getItem("altair_sidebar_mini") == '1') || $body.hasClass('sidebar_mini')) {
                $mini_sidebar_toggle.iCheck('check');
            }

            $mini_sidebar_toggle
                .on('ifChecked', function(event){
                    $switcher.removeClass('switcher_active');
                    localStorage.setItem("altair_sidebar_mini", '1');
                    location.reload(true);
                })
                .on('ifUnchecked', function(event){
                    $switcher.removeClass('switcher_active');
                    localStorage.removeItem('altair_sidebar_mini');
                    location.reload(true);
                });


        // toggle boxed layout

            if((localStorage.getItem("altair_layout") !== null && localStorage.getItem("altair_layout") == 'boxed') || $body.hasClass('boxed_layout')) {
                $boxed_layout_toggle.iCheck('check');
                $body.addClass('boxed_layout');
                $(window).resize();
            }

            $boxed_layout_toggle
                .on('ifChecked', function(event){
                    $switcher.removeClass('switcher_active');
                    localStorage.setItem("altair_layout", 'boxed');
                    location.reload(true);
                })
                .on('ifUnchecked', function(event){
                    $switcher.removeClass('switcher_active');
                    localStorage.removeItem('altair_layout');
                    location.reload(true);
                });

        // main menu accordion mode
            if($sidebar_main.hasClass('accordion_mode')) {
                $accordion_mode_toggle.iCheck('check');
            }

            $accordion_mode_toggle
                .on('ifChecked', function(){
                    $sidebar_main.addClass('accordion_mode');
                })
                .on('ifUnchecked', function(){
                    $sidebar_main.removeClass('accordion_mode');
                });


        });
    </script>
</body>
</html>