function decode_morse( string $code ): string {
	$a = explode( '   ', trim( $code ) );
	$output = "";
	foreach ( $a as $v ) {
		$_a = explode( ' ', trim( $v ) );
		foreach ( $_a as $_v ) {
			$output .= MORSE_CODE[$_v];
		}
		$output .= ' ';
	}

	return trim( $output );
}
