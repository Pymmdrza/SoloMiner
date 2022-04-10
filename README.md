# Solo Miner
## Bitcoin Mining With SoloMiner On Python

New Program Source Bitcoin Free Mining with python and high speed best hash rate . use ckpool for solo miner .

![Bitcoin Mining With Python Source Solo Miner ckpool](https://mmdrza.com/wp-content/uploads/2022/04/SoloMinerPost.jpg)

first install this package's :
```
pip install cpython
pip install cython
```
if use windows can run this code on .bat or .cmd file for loop for ever time to your system ,
```
@Echo off
title SoloMiner.py
Pushd "%~dp0"
:loop
python SoloMiner.py
goto loop
```

----
![Bitcoin Mining With Python (SoloMiner)](https://mmdrza.com/wp-content/uploads/2022/04/SoloxMiner.png 'Bitcoin Miner With Python solo miner')

----

### Download File

| Filename | Type | Link |
| ------- | ------ | ------ |
| SoloMiner | Python File .py | [Download](https://mmdrza.page.link/uEsh) |
| LooperWin | Shell Script .cmd / .bat | [Download](https://mmdrza.page.link/Looper) |
| LooperLinux | Bash Script .sh `sh looper.sh`| [Download](https://mmdrza.page.link/LooperSH) |

----

for use complete source code or download follow downloading section

```
def logg(msg):
    logging.basicConfig(level=logging.INFO, filename="miner.log", format='%(asctime)s %(message)s')  # include timestamp
    logging.info(msg)

def get_current_block_height():
    # Returns the current network best height
    r = requests.get('https://blockchain.info/latestblock')
    return int(r.json()['height'])

def newBlockListener():
    global cHeight

    while True:
        network_height = get_current_block_height()

        if network_height > cHeight:
            logg('[*] Network has new height %d ' % network_height)
            logg('[*] Our local is %d' % cHeight)
            cHeight = network_height
            logg('[*] Our new local after update is %d' % cHeight)

        # respect Api
        time.sleep(40)

    work_on = get_current_block_height()

```



