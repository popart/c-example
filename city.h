
//{{BLOCK(city)

//======================================================================
//
//	city, 256x768@8, 
//	+ palette 256 entries, not compressed
//	+ 891 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x96 
//	Total size: 512 + 57024 + 6144 = 63680
//
//	Time-stamp: 2008-04-17, 06:03:12
//	Exported by Cearn's GBA Image Transmogrifier
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef __CITY__
#define __CITY__

#define cityTilesLen 57024
extern const unsigned short cityTiles[28512];

#define cityMapLen 6144
extern const unsigned short cityMap[3072];

#define cityPalLen 512
extern const unsigned short cityPal[256];

#endif // __CITY__

//}}BLOCK(city)
