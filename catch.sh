echo catching $1
export CastAuth=725838D27CD3B4CD432F5F405FA8AB21EEEB98D0424EED529DACCFE560C6A8CE21E4F822ACFC0C620D3C39B5160863ED1DCE61038A71949C3D4AF79E449CBE0EC64CF6771255E8A4F3ABC54C9E2ED6C4F0CE4008C9C9BBDD3C86DF2A0A071C2F0395B43604FAFB0795B2C462E1AC10A5B38860B9F73541C57E2875F3834BAB6DA771E77586DCD045C84E546A74DC720EC5A632E91A7EAC09C6EFCBDED1A6EB6EBAE5D7AED5ACC5051CC03CE86A39A79B833095BE5744929B4BA7B8F10D4A5D4334F6EE13
export CastBase=http://www.screenr.com/screencast/download
CAST=$1;curl -b .ASPXAUTH=$CastAuth $CastBase/$CAST > $CAST.mp4;sha=`cat $CAST.mp4|openssl sha1`;echo "#CastHash:||$sha $CAST||";ls --block-size=1 -s $CAST.mp4; mv $CAST.mp4 $sha.mp4;lynx -dump -nolist sl4.eu/now;date +%s;date
echo "$sha $CAST">>~/GitHoster/GitHub/wasserfuhr/AllHashes/CastCat.txt
tail ~/GitHoster/GitHub/wasserfuhr/AllHashes/CastCat.txt