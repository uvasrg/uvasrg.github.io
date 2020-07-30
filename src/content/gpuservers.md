# Using the GPU Servers

Here are some notes on how to use the GPU servers (thanks to Brian
Tran for creating this document). Before getting started, you'll need
a CS department account set up.

1. First, log into the general purpose server (e.g., `portal01`) using:
```bash
ssh -l _YourComputingID_ portal01.cs.virginia.edu
```
(for more, see
[https://www.cs.virginia.edu/wiki/doku.php?id=linux_ssh_access](https://www.cs.virginia.edu/wiki/doku.php?id=linux_ssh_access).


2. Run `srun -p gpu -w _ai01_ --pty bash -i -l` to log into one of the
nodes that support GPU. Change `_ai01_` with the specific compute
resource you are requesting (list of available compute resources are
here:
[https://www.cs.virginia.edu/wiki/doku.php?id=compute_resources](https://www.cs.virginia.edu/wiki/doku.php?id=compute_resources),
you need to run the code on one of these nodes.


3. Run `curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh` in the command shell. This will download anaconda. Follow the on-screen prompts.

4. Run `sh Miniconda3-latest-Linux-x86_64.sh`, and follow the on-screen prompts.

5. Create a virtual environment with command below. You should be able
to use a recent version of python, unless you are stuck using
libraries that haven't been updated (and may need to use Python 2.7).

`conda create -n yourenvname python=_x.x_ anaconda` 

6. You might need to configure the path explicitly to ensure anaconda works properly. For example, `PATH=~/anaconda2/bin:$PATH`

7. Cuda modules are already installed on the server and you only need to load by typing the two commands one by one: 
`module load cudnn;`  
`module load cuda-toolkit-9.0.`

8. Activate environment with `source activate env_name` or `conda activate env_name`.

9. Download pytorch or tensorflow that is compatible with cuda 9.0:
- `conda install pytorch==1.0.1 torchvision==0.2.2 cudatoolkit=9.0 -c pytorch` (details can be found from here, make sure you are looking for cuda 9.0: https://pytorch.org/get-started/previous-versions/)
- `pip install tensorflow-gpu==1.15` (check your own TF version and replace with matching one, details can be found here: [https://www.tensorflow.org/install/gpu](https://www.tensorflow.org/install/gpu))

10. Run desired pytorch code, when you want to run the code again
after logging out from the server, repeat the process of loading the
two cuda modules and also set the path for Anaconda directory if
needed and activate your virtual environment.



