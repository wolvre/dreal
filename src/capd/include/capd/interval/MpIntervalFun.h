/////////////////////////////////////////////////////////////////////////////
//   Package:          CAPD
//   Subpackage: 
/// @addtogroup intervals
/// @{ 

/////////////////////////////////////////////////////////////////////////////
/// @file mpIntervalFun.h
///
/// @author Tomasz Kapela   @date 23-08-2006
/////////////////////////////////////////////////////////////////////////////

// Copyright (C) Tomasz Kapela 2006 
//
// This file constitutes a part of the CAPD library, 
// distributed under the terms of the GNU General Public License.
// Consult  http://capd.wsb-nlu.edu.pl/ for details. 


#ifndef _CAPD_INTERVAL_MPINTERVALFUN_H_ 
#define _CAPD_INTERVAL_MPINTERVALFUN_H_ 

#include <exception>
#include "capd/multiPrec/MpfrClass.h"
#include "capd/interval/MpIntervalSettings.h"
#include "capd/interval/MpInterval.h"

class NaNException: public std::exception{
  const char * what() const throw ()
  {
    return "Not a number. ";
  }
};


#ifdef __HAVE_MPFR__

namespace capd{
namespace intervals{


inline bool isinf(const MpInterval & r)
{ 
  return (isinf(r.leftBound()) || isinf(r.rightBound())); 
}

inline void testNaN(const MpInterval & x)
{
#ifdef __MPI_TEST_NAN__
  if(isnan(x.leftBound()) || isnan(x.rightBound())))
    throw NaNException();  
#endif  // __MPI_TEST_NAN__
}


template<>
MpInterval sin(const MpInterval& x);

template<> 
MpInterval cos(const MpInterval& x);

template<>
MpInterval tan(const MpInterval& x);


template<>
MpInterval log(const MpInterval& x);

template<>
MpInterval exp(const MpInterval& x);

//-------- sqrt -----------------
template<>
MpInterval sqrt(const MpInterval  & z);

template<>
inline MpInterval power(const MpInterval &a, const MpInterval &b)
{
  if( a.leftBound() < 0 )
  {
    throw std::range_error("power(A, B): interval A must be greater than zero\n");
  }
  return exp(b * log(a));
}

template<>
MpInterval power(const MpInterval& value, /*long*/  int exponent);

template<>
inline MpInterval  MpInterval::pi()
{
  
  capd::multiPrec::PrecisionType prec = BoundType::getDefaultPrecision();
  return MpInterval(BoundType::Pi(capd::multiPrec::RoundDown, prec), BoundType::Pi(capd::multiPrec::RoundUp, prec));
}

/*
//  So far not defined in Interval template 
//
template<>
MpInterval MpInterval::log2()
{

   capd::multiPrec::PrecisionType   prec = BoundType::getDefaultPrecision();
   return MpInterval(BoundType::Log2(capd::multiPrec::RoundDown, prec), BoundType::Log2(capd::multiPrec::RoundUp, prec));
}
*/

template<>
inline MpInterval MpInterval::euler()
{
   capd::multiPrec::PrecisionType   prec = BoundType::getDefaultPrecision();
   return MpInterval(BoundType::Euler(capd::multiPrec::RoundDown, prec), BoundType::Euler(capd::multiPrec::RoundUp, prec));
}


Interval<MpfrClass>::BoundType quadrant(const Interval<MpfrClass>::BoundType &x);
int modulo4(MpfrClass x);


}}  // end of namespace capd::intervals

#endif  // __HAVE_MPFR__

#endif // _CAPD_INTERVAL_MPINTERVALFUN_H_ 

/// @}
