from time import sleep
from robot.libraries.BuiltIn import BuiltIn
from selenium.webdriver.common.by import By

class Custom(object):
    
    @property
    def _driver(self):
        
        return BuiltIn().get_library_instance('SeleniumLibrary')
 
    def highlight_element(self, locator):

        element_type = locator.split('=', 1)[0]
        element_locator = locator.split('=', 1)[1]

        if element_type == 'id':
            el = self._driver.driver.find_element(By.ID, element_locator)            
        
        if element_type == 'name':
            el = self._driver.driver.find_element(By.NAME, element_locator)            
            
        if element_type == 'xpath':
            el = self._driver.driver.find_element(By.XPATH, element_locator)        

        # Obter estilo original do elemento antes de appendar mais estilos
        original_style = el.get_attribute('style')
        
        #Aplicando estilos para personalizar aparição do elemento
        self._driver.driver.execute_script("""arguments[0].style.background="#EBB014";""",el)
        self._driver.driver.execute_script("""arguments[0].style.border="3px solid #046467";""",el)
        
        sleep(0.4)
        
        #Voltar ao estilo original
        self._driver.driver.execute_script("""arguments[0].setAttribute('style', arguments[1]);""",el, original_style)
               
    # def carregar_mouse_iterativo(self):
    #     self._driver.driver.execute_script(open("superutil\\cursor.js").read())
        
    
    # def highlight_on(self, element):
    #     global i
        
    #     #if i == 0:
    #     self._driver.driver.execute_script(open("superutil\\cursor.js").read())
    #        # i = i + 1
        
    #     self._driver.driver.execute_script("""document.getElementById("selenium_cursor").src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAeCAQAAACGG/bgAAAAAmJLR0QA/4ePzL8AAAAJcEhZcwAAHsYAAB7GAZEt8iwAAAAHdElNRQfgAwgMIwdxU/i7AAABZklEQVQ4y43TsU4UURSH8W+XmYwkS2I09CRKpKGhsvIJjG9giQmliHFZlkUIGnEF7KTiCagpsYHWhoTQaiUUxLixYZb5KAAZZhbunu7O/PKfe+fcA+/pqwb4DuximEqXhT4iI8dMpBWEsWsuGYdpZFttiLSSgTvhZ1W/SvfO1CvYdV1kPghV68a30zzUWZH5pBqEui7dnqlFmLoq0gxC1XfGZdoLal2kea8ahLoqKXNAJQBT2yJzwUTVt0bS6ANqy1gaVCEq/oVTtjji4hQVhhnlYBH4WIJV9vlkXLm+10R8oJb79Jl1j9UdazJRGpkrmNkSF9SOz2T71s7MSIfD2lmmfjGSRz3hK8l4w1P+bah/HJLN0sys2JSMZQB+jKo6KSc8vLlLn5ikzF4268Wg2+pPOWW6ONcpr3PrXy9VfS473M/D7H+TLmrqsXtOGctvxvMv2oVNP+Av0uHbzbxyJaywyUjx8TlnPY2YxqkDdAAAAABJRU5ErkJggg==";""")
        
        
    #     element_type = element.split('=')[0]
    #     element_locator = element.split('=')[1]
    #     test = ''
       
    #     if element_type == 'id':
    #         test = f"""document.cursor.moveToId("{element_locator}",speed = 1, offsetX = 0.5, offsetY = 0.5)"""
    #         webelement = self._driver.driver.driver_find_element_by_id(element_locator)
            
    #     if element_type == 'name':
    #         test = f"""document.cursor.moveToName("{element_locator}",speed = 1, offsetX = 0.5, offsetY = 0.5)"""
    #         webelement = self._driver.driver.driver_find_element_by_name(element_locator)
            
    #     if element_type == 'name':
    #        test = f"""document.cursor.moveToXpath("{element_locator}",speed = 1, offsetX = 0.5, offsetY = 0.5)"""
    #        webelement = self._driver.driver.driver_find_element_by_xpath(element_locator)
        
        #self._driver.driver.ActionChains(self._driver.driver).click_and_hold(webelement).perform()
        #self._driver.driver.execute_script(open("superutil\\cursor.js").read())
        #self._driver.driver.execute_script(test)
        
        #time.sleep(2)
        #'data:image/png;base64,'iVBORw0KGgoAAAANSUhEUgAAABQAAAAeCAQAAACGG/bgAAAAAmJLR0QA/4ePzL8AAAAJcEhZcwAAHsYAAB7GAZEt8iwAAAAHdElNRQfgAwgMIwdxU/i7AAABZklEQVQ4y43TsU4UURSH8W+XmYwkS2I09CRKpKGhsvIJjG9giQmliHFZlkUIGnEF7KTiCagpsYHWhoTQaiUUxLixYZb5KAAZZhbunu7O/PKfe+fcA+/pqwb4DuximEqXhT4iI8dMpBWEsWsuGYdpZFttiLSSgTvhZ1W/SvfO1CvYdV1kPghV68a30zzUWZH5pBqEui7dnqlFmLoq0gxC1XfGZdoLal2kea8ahLoqKXNAJQBT2yJzwUTVt0bS6ANqy1gaVCEq/oVTtjji4hQVhhnlYBH4WIJV9vlkXLm+10R8oJb79Jl1j9UdazJRGpkrmNkSF9SOz2T71s7MSIfD2lmmfjGSRz3hK8l4w1P+bah/HJLN0sys2JSMZQB+jKo6KSc8vLlLn5ikzF4268Wg2+pPOWW6ONcpr3PrXy9VfS473M/D7H+TLmrqsXtOGctvxvMv2oVNP+Av0uHbzbxyJaywyUjx8TlnPY2YxqkDdAAAAABJRU5ErkJggg==
        #self._driver.driver.execute_script("""document.getElementById("selenium_cursor").src="";""")

        #self._driver.driver.execute_script("""document.getElementById("selenium_cursor").src="";""")
        
        
    # def highlight_off(self, element):
    #            self._driver.driver.execute_script("""document.getElementById("selenium_cursor").src="";""")


    # def highlight_ref(self, element):
    #     """Highlights (blinks) a Selenium Webdriver element"""
    #     #el = element.split('=')[1]
    #     #el_1 = element.split('=')[1]
    #     #el_1 = el_1.replace('"', "'")
    #     #el = self._driver.driver.find_element(el)
        
    #     def apply_style(s):
            
    #         #el = element.split('=')[1]
    #         #el = self._driver.driver.find_element(el)
    #         self._driver.driver.execute_script(open("superutil\\cursor.js").read())
    #         #test = f"""document.cursor.moveToXpath("//*[contains(@id, 'menu')][contains(text(), 'Estrutura')]",speed = 5, offsetX = 0.5, offsetY = 0.5)"""
    #         #self._driver.driver.execute_script(test)
    #         #self._driver.driver.execute_script("arguments[0].setAttribute('style', arguments[1]);",el, s)
    #     #original_style = el.get_attribute('style')
    #     apply_style("background: yellow; border: 3px solid red;")
    #     time.sleep(2)
    #     #apply_style(original_style)
            