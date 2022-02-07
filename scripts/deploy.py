from scripts.helpful_scripts import get_account
from brownie import config, network, SoulGenesis

def deploy():
    account = get_account()
    SoulGenesis.deploy(
        {"from": account},
        publish_source=config["networks"][network.show_active()].get("verify", False),
    )

def main():
    deploy()
