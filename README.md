# finscraper
Defines a sandbox environment for tools related to scraping news sites and Yahoo Finance using yfinance.

### INSTALL

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
pip install -r requirements.txt
```
