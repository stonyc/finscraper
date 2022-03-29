# finscraper
Defines a sandbox environment for tools related to scraping news sites and Yahoo Finance using yfinance.

## INSTALL

Clone the repository:

```bash
git clone https://github.com/stonyc/finscraper.git
```

Navigate to the repository directory:

```bash
cd finscraper
```

### Docker

Depending on your Docker installation you may need `sudo` privileges:

```bash
docker build -t finscraper docker/Dockerfile
```

Navigate to your local working directory:

```bash
WORKDIR="/User/stonyc/tmp"
cd $WORKDIR
```

Create a new container with port-forwarding enabled on 7777:

```bash
docker run -it --rm -v "$WORKDIR":/tmp -p 7777:7777 finscraper:latest
```

You can now open a browser window to access Jupyter Hub:

```
http://127.0.0.1:7777
```

### Anaconda

Clone the repository:
```bash
git clone https://github.com/stonyc/finscraper.git
```

Navigate to the downloaded repository:

```bash
cd finscraper
```

Create the base `conda` environment:

```bash
conda create -n finscraper -c anaconda -c huggingface \
    pandas numpy scipy tensorflow keras transformers \
    requests lxml matplotlib plotly dash jupyterlab \
    ipykernel
```

Activate the environment:

```bash
conda activate finscraper
```

Then install remaining required packages:

```bash
pip install -r src/requirements.txt
```

For specific examples, please refer to each sub-folder. 
