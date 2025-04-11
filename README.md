# BookWorld: Interactive Multi-Agent Story Creation System


[![Paper](https://img.shields.io/badge/Paper-PDF-red)](paper_link_placeholder)
[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

This is the official implementation of the paper "BOOKWORLD: From Novels to Interactive Agent Societies for Story Creation".

![Preview.png](https://www.helloimg.com/i/2025/04/08/67f530c202c68.png)


## Introduction

BookWorld is a comprehensive system for social simulation in fictional worlds through multi-agent interactions. The system features:

- Scene-based story progression with multiple character agents
- Continuous updating of agent memories, status, and goals
- World agent orchestration of the simulation
- Support for human intervention and control
- LLM-based story generation and refinement

## Setup

### Step 1. Clone the repository
```bash
git clone https://github.com/your-repo/bookworld.git
cd bookworld
```

### Step 2. Install dependencies
```bash
pip install -r requirements.txt
```

### Step 3. Configure Simulation Settings
- Update the configuration parameters in `config.json`:
  - `role_llm_name`: LLM model for character roles
  - `world_llm_name`: LLM model for world simulation
  - `config_path`: The path to the experiment
  - `if_save`: Enable/disable saving (1/0)
  - `scene_mode`: Scene progression mode
  - `rounds`: Number of simulation rounds
  - `mode`: Simulation mode ("free" or "script")

## Usage

### Step 1. Start the server
```bash
python server.py
```

### Step 2. Access the web interface
Open a browser and navigate to http://localhost:8000.

### Step 3. Interact with the system
- Start/pause/stop story generation
- View character information and map details
- Monitor story progression and agent interactions
- Edit generated content if needed

### Step 4. Continue from previous simulation
Locate the directory of the previous simulation within `/experiment_saves/`, and set its path to the `save_dir` field in `config.json`.

## Customization
### Construct Your Virtual World
1. Create the roles, map, worldbuilding following the examples given in `/data/`.
2. Prepare the experiment presets following the examples given in `/experiment_presets/`
3. Enter the preset path to `preset_path` in `config.json`.

### Convert SillyTavern Character Cards to Role Data
1. Put your character cards in `/data/sillytavern_cards/`.
2. Run the script. It will convert all the cards into the role data that BookWorld needs.
3. Input role codes of all the characters participating in this simulation to `role_agent_codes` in the preset file.

## Directory Structure

```
.
├── data/
├── frontend/
│   ├── assets/
│   ├── css/
│   └── js/
├── modules/
│   ├── db/
│   ├── llm/
│   ├── prompt/
│   ├── main_role_agent.py
│   └── world_agent.py
├── experiment_configs/
├── BookWorld.py
├── server.py
├── config.json
└── index.html
```


## Authors and Citation
**Authors:** Yiting Ran, Xintao Wang, Tian Qiu,
Jiaqing Liang, Yanghua Xiao, Deqing Yang.

```bibtex
to be updated
```


##  Acknowledgements

- Fantasy Map: The background of map panel used in the frontend is from [Free Fantasy Maps](https://freefantasymaps.org/epic-world-cinematic-landscapes/), created by Fantasy Map Maker. This map is free for non-commercial use.
