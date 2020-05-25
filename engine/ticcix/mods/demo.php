<?php

if( !defined( 'DATALIFEENGINE' ) ) {
    die( "Hacking attempt!" );
}

$news_id = isset($_GET['id_news']) ? intval($_GET['id_news']) : false;

if( $news_id ) {
    $row = $db->super_query( "SELECT * FROM " . PREFIX . "_post WHERE id='$news_id'" );

    $xfields = xfieldsdataload( $row['xfields'] );

    $tpl->set( '{title}', stripslashes( $row['title'] ) );
    $tpl->set( '{description}', stripslashes( $row['descr'] ) );
    $tpl->set( '{keywords}', stripslashes( $row['keywords'] ) );
    $tpl->set( '{view}', isset($xfields['link']) ? $xfields['link'] : "null" ); // link დამატებითი ველის სახელი
    if( $config['allow_alt_url'] ) {

			if( $config['seo_type'] == 1 OR $config['seo_type'] == 2  ) {

				if( $row['category'] and $config['seo_type'] == 2 ) {

					$full_link = $config['http_home_url'] . get_url( $row['category'] ) . "/" . $row['id'] . "-" . $row['alt_name'] . ".html";

				} else {

					$full_link = $config['http_home_url'] . $row['id'] . "-" . $row['alt_name'] . ".html";

				}

			} else {

				$full_link = $config['http_home_url'] . date( 'Y/m/d/', $row['date'] ) . $row['alt_name'] . ".html";
			}

		} else {

			$full_link = $config['http_home_url'] . "index.php?newsid=" . $row['id'];

		}

		if( ($row['full_story'] < 13) AND $config['hide_full_link'] ) $tpl->set_block( "'\\[full-link\\](.*?)\\[/full-link\\]'si", "" );
		else {

			$tpl->set( '[full-link]', "<a href=\"" . $full_link . "\">" );

			$tpl->set( '[/full-link]', "</a>" );
		}

		$tpl->set( '{full-link}', $full_link );

    $tpl->load_template( 'ticcix/view.tpl' );

    $tpl->compile( 'content' );
    $tpl->clear();
} else {
    echo "news id is empty!";
}

?>