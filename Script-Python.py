import pandas as pd
df_regular = pd.read_csv("/content/drive/MyDrive/Projeto CECDA - TCC/TCC/DADOS/MICRODADOS_ENCCEJA_NACIONAL_REGULAR_2020.csv", encoding='latin-1')
pe = df_regular[df_regular['SG_UF_PROVA'] == 'PE']
pe.to_csv("PE_Regular")
