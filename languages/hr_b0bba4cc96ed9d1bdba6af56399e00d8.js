Drupal.locale = { 'pluralFormula': function($n) { return Number((((($n%10)==1)&&(($n%100)!=11))?(0):((((($n%10)>=2)&&(($n%10)<=4))&&((($n%100)<10)||(($n%100)>=20)))?(1):2))); }, 'strings': { "Unspecified error": "Nepoznata pogreška", "An error occurred. \n@uri\n@text": "Pojavila se pogreška. \n@uri \n@text", "An error occurred. \n@uri\n(no information available).": "Pojavila se pogreška. \r\n@uri\r\n(nema dodatnih informacija).", "An HTTP error @status occurred. \n@uri": "Pojavila se HTTP pogreška @status. \n@uri", "Drag to re-order": "Prevuci da bi preuredio", "Changes made in this table will not be saved until the form is submitted.": "Učinjene promjene neće biti spremljene dok forma nije poslana.", "Select all rows in this table": "Označite sve redove u tablici", "Deselect all rows in this table": "Poništi izbor svih redova u ovoj tablici", "Split summary at cursor": "Razdvoji sažetak kod pokazivača miša.", "Join summary": "Spoji sažetak", "Continue": "Nastavi", "Your server has been successfully tested to support this feature.": "Vaš server je uspješno testiran i on podržava ovo svojstvo.", "Your system configuration does not currently support this feature. The \x3ca href=\"http://drupal.org/node/15365\"\x3ehandbook page on Clean URLs\x3c/a\x3e has additional troubleshooting information.": "Vaš sustav trenutno ne podržava ovu mogućnost.\x3ca href=\"http://drupal.org/node/15365\"\x3eUpute o Clean URLs\x3c/a\x3e sadrže više informacija kako rješiti problem.", "Testing clean URLs...": "Testiranje čistog URLa...", "Delete": "Obriši", "Cancel": "Otkaži", "Anonymous": "Anoniman", "This action cannot be undone.": "Ovu aktivnost nije moguće poništiti.", "none": "nema", "Not published": "Nije objavljeno", "Edit": "Uredi", "Upload": "Učitaj", "Only files with the following extensions are allowed: %files-allowed.": "Samo datoteke sa sljedećim nastavcima su dozvoljene: %files-allowed.", "The changes to these blocks will not be saved until the \x3cem\x3eSave blocks\x3c/em\x3e button is clicked.": "Promjene na ovim blokovima neće biti sačuvane sve dok ne kliknete na dugme \x3cem\x3eSpremi blokove\x3c/em\x3e." } };