# eqworks-challenge

## Requirements
Docker Desktop

## Steps to run the notebook with result
open the terminal and go to the project directory.
1. Build image `docker build . -t eqworks-worksample`
2. Run the built image `docker run -p 8888:8888 eqworks-worksample`
3. Copy the url shown in the termial with format `http://127.0.0.1:8888/?token=<token_id>`
4. Open `EQWorksWorkSample.ipynb` to run the notebook and see the result.
