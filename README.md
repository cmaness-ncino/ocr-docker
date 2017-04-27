# ocr-docker

To get your very own docker instance 

    git clone https://github.com/cmaness-ncino/ocr-docker
    docker build -t tika_tesseract .
    docker run --name tika_tester -t -p 9998:9998 tika_tesseract

Congrats on your new baby Docker Instance

Give it a run like so:

    curl -T testpdf.pdf http://localhost:9998/tika
    curl -T multipage_tiff_example.tif http://localhost:9998/tika

The first command use Tika itself
The second command uses Tesseract OCR
