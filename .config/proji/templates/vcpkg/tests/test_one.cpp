#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include <cplate/classic.h>
#include <doctest/doctest.h>

TEST_CASE( "testing shape class" ) {
    Object shape;
    shape.setSurface( 5, 4 );
    CHECK( shape.getSurface() == 20 );
}

TEST_CASE( "testing shape class" ) {
    Object shape;
    shape.setVolume( 2, 3, 4 );
    CHECK( shape.getVolume() == 24 );
}
