import cv2
import numpy as np

def is_template_in_image(img, templ):
    result = cv2.matchTemplate(img, templ, cv2.TM_SQDIFF)
    min_val = cv2.minMaxLoc(result)[0]
    thr = 1000 

    return min_val <= thr


def check_header(img):
    valid = []
    image = cv2.imread(img)
    for templ in templates:
        template = cv2.imread(templ)
        if is_template_in_image(image, template):
            valid.append(True)
        else:
            valid.append(False)

    if True in valid:
        crop = image[y:y+h, x:x+w]
        cv2.imwrite(img, crop)
    else:
        cv2.imwrite(img, image)

# Variáveis de corte | y/h = altura x/w = largura
y=140
x=0
h=3000
w=1300

templates = ['superutil\\opencv\\header1.png', 'superutil\\opencv\\header2.png', 'superutil\\opencv\\header3.png']
