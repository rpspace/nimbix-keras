c.NotebookApp.certfile = '/etc/JARVICE/cert.pem'
c.NotebookApp.keyfile = '/etc/JARVICE/cert.pem'
c.NotebookApp.ip = 'localhost'
with open('/home/nimbix/jupyter-PASSWORD') as f: c.NotebookApp.password=f.read()
c.NotebookApp.open_browser=False
c.NotebookApp.port=8888
c.NotebookApp.port_retries=0
