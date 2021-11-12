#ifndef FIXED_HPP
#define FIXED_HPP

#include <ostream>

class Fixed
{
	public:
		Fixed();
		Fixed( const int value );
		Fixed( const float value );
		~Fixed();
		Fixed( const Fixed& src );
		Fixed&				operator=( const Fixed& right );
		bool				operator>( const Fixed& right );
		bool				operator<( const Fixed& right );
		bool				operator>=( const Fixed& right );
		bool				operator<=( const Fixed& right );
		bool				operator==( const Fixed& right );
		bool				operator!=( const Fixed& right );
		Fixed				operator+( const Fixed& right );
		Fixed				operator-( const Fixed& right );
		Fixed				operator*( const Fixed& right );
		Fixed				operator/( const Fixed& right );
		int					getRawBits( void ) const;
		void				setRawBits( int const raw );
		float				toFloat( void ) const;
		int					toInt( void ) const;
	private:
		int					_InternalValue;
		static const int	_FixBit;
};

std::ostream&	operator<<( std::ostream& os, const Fixed& src );

#endif