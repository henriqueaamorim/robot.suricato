import cv2
import numpy as np
from datetime import datetime
from PIL import Image, ImageFont, ImageDraw

def recortar_imagem(img_base, language, server):

    # Carregar a imagem
    imagem = cv2.imread(img_base)

    # Converter para escala de cinza
    gray = cv2.cvtColor(imagem, cv2.COLOR_BGR2GRAY)

    # Ajustar o limiar de acordo com o servidor para capturar mais conteúdo
    threshold_value = 200 if str(server[-1]) in ["9", "8"] else 180
    _, binary = cv2.threshold(gray, threshold_value, 255, cv2.THRESH_BINARY_INV)

    # Encontrar contornos e recortar a imagem
    coords = cv2.findNonZero(binary)
    x, y, w, h = cv2.boundingRect(coords)

    # Adicionar uma margem extra para capturar mais conteúdo
    margin = 20
    x = max(x - margin, 0)
    y = max(y - margin, 0)
    w = min(w + 2 * margin, imagem.shape[1] - x)
    h = min(h + 2 * margin, imagem.shape[0] - y)

    crop = imagem[y:y + h, x:x + w]

    # Adicionar uma faixa inferior para o texto
    footer_height = 30
    with_footer = np.full((footer_height, crop.shape[1], 3), [255, 255, 255], dtype=np.uint8)
    result = np.vstack((crop, with_footer))

    # Adicionar texto à faixa inferior
    image_pil = Image.fromarray(result)
    draw = ImageDraw.Draw(image_pil)
    monospace = ImageFont.truetype("superutil\\opencv\\ayar.ttf", 10)

    # Definir data e texto baseado no idioma
    date = datetime.today().strftime('%d/%m/%Y') if language.upper() != 'EN-US' else datetime.today().strftime('%m/%d/%Y')
    phrases = {'PT-BR': 'Verificado em:', 'EN-US': 'Checked at:', 'ES-ES': 'Comprobado en:'}
    phrase = phrases.get(language.upper(), 'Checked at:')

    draw.text((10, result.shape[0] - 22), f'{phrase} {date}', (0, 0, 0), font=monospace)

    # Converter de volta para formato NumPy
    final = np.array(image_pil)

    # Salvar a imagem com o novo nome
    image_name = img_base.replace('base', 'opencv')
    cv2.imwrite(image_name, final)

# Exemplo de uso:
# recortar_imagem('caminho/para/atual.png', 'PT-BR', 'server9')
