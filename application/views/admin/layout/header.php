<!DOCTYPE html>
<html lang="en">
    <head>
        <title><?php echo $this->config->item('site_name') ?> | <?php echo isset($title)?$title:ucwords(str_replace('_',' ',$this->router->fetch_method())); ?></title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="shortcut icon" href="<?php
        $favicon = get_option("favicon");
        if ($favicon): echo $favicon;
        else: echo base_url() . 'assets/img/favicon.png';
        endif;
        ?>" />
        
        <!-- Bootstrap -->
        <link rel="stylesheet" type="text/css" href="<?= base_url(); ?>assets/css/bootstrap.css"/>
        
        <!-- Font Awesome -->
        <link rel="stylesheet" href="//use.fontawesome.com/releases/v5.2.0/css/all.css">
        
        <!-- Simple Line Icons -->
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.css">
        
        <!-- Morris -->
        <link rel="stylesheet" type="text/css" href="<?= base_url(); ?>assets/css/morris.css" media="all">
        
        <!-- Date Time Picker -->
        <link rel="stylesheet" type="text/css" href="<?= base_url(); ?>assets/user/styles/css/bootstrap-datetimepicker.css" media="all">
        <!----custom added----->
        
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
        
        <!-- Chartist -->
        <link rel="stylesheet" href="<?php echo base_url(); ?>assets/custom/plugins/chartist/css/chartist.min.css">
        <link rel="stylesheet" href="<?php echo base_url(); ?>assets/custom/plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css">
    
        <link href="<?php echo base_url(); ?>assets/custom/css/style.css" rel="stylesheet">
        <link href="<?php echo base_url(); ?>assets/custom/css/custom.css" rel="stylesheet">

		<script src="<?php echo base_url(); ?>assets/js/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.3/dist/Chart.min.js"></script>
        <script src="<?php echo base_url(); ?>assets/chart/functions.js"></script>
        <script type="text/javascript">
			
    base_url = '<?=base_url()?>';

		'use strict';

window.chartColors = {
	red: 'rgb(255, 99, 132)',
	orange: 'rgb(255, 159, 64)',
	yellow: 'rgb(255, 205, 86)',
	green: 'rgb(75, 192, 192)',
	blue: 'rgb(54, 162, 235)',
	purple: 'rgb(153, 102, 255)',
	grey: 'rgb(201, 203, 207)'
};

(function(global) {
	var MONTHS = [
		'January',
		'February',
		'March',
		'April',
		'May',
		'June',
		'July',
		'August',
		'September',
		'October',
		'November',
		'December'
	];

	var COLORS = [
		'#4dc9f6',
		'#f67019',
		'#f53794',
		'#537bc4',
		'#acc236',
		'#166a8f',
		'#00a950',
		'#58595b',
		'#8549ba'
	];

	var Samples = global.Samples || (global.Samples = {});
	var Color = Chart.helpers.color;

	Samples.utils = {
		// Adapted from http://indiegamr.com/generate-repeatable-random-numbers-in-js/
		srand: function(seed) {
			this._seed = seed;
		},

		rand: function(min, max) {
			var seed = this._seed;
			min = min === undefined ? 0 : min;
			max = max === undefined ? 1 : max;
			this._seed = (seed * 9301 + 49297) % 233280;
			return min + (this._seed / 233280) * (max - min);
		},

		numbers: function(config) {
			var cfg = config || {};
			var min = cfg.min || 0;
			var max = cfg.max || 1;
			var from = cfg.from || [];
			var count = cfg.count || 8;
			var decimals = cfg.decimals || 8;
			var continuity = cfg.continuity || 1;
			var dfactor = Math.pow(10, decimals) || 0;
			var data = [];
			var i, value;

			for (i = 0; i < count; ++i) {
				value = (from[i] || 0) + this.rand(min, max);
				if (this.rand() <= continuity) {
					data.push(Math.round(dfactor * value) / dfactor);
				} else {
					data.push(null);
				}
			}

			return data;
		},

		labels: function(config) {
			var cfg = config || {};
			var min = cfg.min || 0;
			var max = cfg.max || 100;
			var count = cfg.count || 8;
			var step = (max - min) / count;
			var decimals = cfg.decimals || 8;
			var dfactor = Math.pow(10, decimals) || 0;
			var prefix = cfg.prefix || '';
			var values = [];
			var i;

			for (i = min; i < max; i += step) {
				values.push(prefix + Math.round(dfactor * i) / dfactor);
			}

			return values;
		},

		months: function(config) {
			var cfg = config || {};
			var count = cfg.count || 12;
			var section = cfg.section;
			var values = [];
			var i, value;

			for (i = 0; i < count; ++i) {
				value = MONTHS[Math.ceil(i) % 12];
				values.push(value.substring(0, section));
			}

			return values;
		},

		color: function(index) {
			return COLORS[index % COLORS.length];
		},

		transparentize: function(color, opacity) {
			var alpha = opacity === undefined ? 0.5 : 1 - opacity;
			return Color(color).alpha(alpha).rgbString();
		}
	};

	// DEPRECATED
	window.randomScalingFactor = function() {
		return Math.round(Samples.utils.rand(-100, 100));
	};

	// INITIALIZATION

	Samples.utils.srand(Date.now());

	// Google Analytics
	/* eslint-disable */
	if (document.location.hostname.match(/^(www\.)?chartjs\.org$/)) {
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-28909194-3', 'auto');
		ga('send', 'pageview');
	}
	/* eslint-enable */

}(this));
	</script>
        <!----custom added----->
        <?php
        
        echo custom_header();
        
        if ( isset($component_styles) ) {
            ?>
            <!-- Custom Styles -->
            <?php
            echo $component_styles;
        }

        if (file_exists( FCPATH . 'assets/admin/styles/css/custom.css' ) ) {
            
            echo "\n"
                . "<link rel=\"stylesheet\" type=\"text/css\" href=\"" . base_url() . "assets/admin/styles/css/custom.css?ver=" . MD_VER . "\" media=\"all\"/>"
            ."\n";
        }
        ?>
        
        <?php if ( ($this->router->fetch_method() === 'notifications') ||
                ($this->router->fetch_method() === 'terms_policies') ||
                ($this->router->fetch_method() === 'all_guides') ||
                ($this->router->fetch_method() === 'new_faq_article') ||
                ($this->router->fetch_method() === 'faq_articles') ): ?>
            <link href="<?= base_url(); ?>assets/admin/summernote/dist/summernote.css" rel="stylesheet">
        <?php endif; ?>
            
    </head>
    <body>
        <header>
            <div class="container-fluid"> <a class="navbar-brand" href="<?= base_url(); ?>"><img src="<?php
                    $main_logo = get_option('main_logo');
                    if ($main_logo): echo $main_logo;
                    else: echo base_url() . '/assets/img/logo.png';
                    endif;
                    ?>" alt="<?= $this->config->item('site_name') ?>" width="32"></a>
                <ul class="nav navbar-nav navbar-left">
                    <li>
                        <a href="<?php echo site_url('admin/notifications') ?>" class="btn btn-labeled btn-primary">
                            <span class="btn-label">
                                <i class="icon-notebook"></i>
                            </span>
                            <?php echo $this->lang->line('ma8'); ?>
                        </a>
                    </li>
                    <li>
                        <button type="button" class="btn btn-labeled short-menu"> <i class="fa fa-bars fa-lg"></i> </button>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="<?php echo site_url('admin/support') ?>">
                            <i class="icon-question"></i>
                            <span class="label label-success"><?php echo $this->admin_header['all_tickets'] ?></span>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="<?php echo site_url('admin/update') ?>">
                            <i class="icon-cloud-download"></i>
                            <span class="label label-primary"><?php if ($check_update): echo 1; else: echo 0; endif; ?></span>
                        </a>
                    </li>
                    <li>
                        <a href="<?php echo site_url('logout') ?>">
                            <i class="icon-logout"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </header>