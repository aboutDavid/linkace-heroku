$LINKACE_VERSION = "v1.0.1"
wget https://github.com/Kovah/LinkAce/archive/$LINKACE_VERSION.zip
unzip $LINKACE_VERSION
mv -v ./LinkAce-$LINKACE_VERSION/* ./
composer install --prefer-dist
php artisan key:generate
php artisan vendor:publish --provider="Spatie\Backup\BackupServiceProvider"
npm install
npm run prod
cd public
