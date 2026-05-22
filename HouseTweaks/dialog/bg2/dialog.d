CHAIN IF WEIGHT #-1 ~Global("C0ElgeaReward","GLOBAL",1)~ THEN WELTHER a1
~House Tweaks: INT/WIS/CHA-based Bonus Spell Slots~
END
++ ~House Tweaks: Warrior HLAs~ + a1.1
++ ~Resist Magic~ + a1.1

CHAIN WELTHER a1.1
~Resist Magic
This ability allows the warrior to temporarily tap a great inner strength and fight off the effects of malevolent magic. For 5 rounds, the warrior gains a +10 bonus to all saves. In addition, the warrior absorbs the next 20 spell level's worth of spells cast upon <PRO_HIMHER>. The saving throw bonus always persists for the full duration.~
= ~Critical Strike~
END
++ ~Critical Strike
A high-level warrior's intimate knowledge of vital spots on opponents allows <PRO_HIMHER> to, once per day, concentrate <PRO_HISHER> next attack to strike a vital area. With this ability, the warrior's next attack is a natural 20, a critical hit that deals 4x damage (2x against enemies immune to critical hits).

Requires: Power Attack~ + a1.2
++ ~War Cry~ + a1.2

CHAIN WELTHER a1.2
~War Cry
With a War Cry, the warrior lets out an invigorating roar, healing <PRO_HISHER> hit points to full in addition to removing fatigue and restoring drained levels.~
DO ~GiveItem("MISC5O",Player1)
EscapeArea()~ EXIT

EXTEND_TOP GORCAMB 54
++ ~House Tweaks: Improved Dialogues (BG:EE)~ EXTERN GORCAMB AES-DECK
++ ~Constitution Bonuses for All Classes + Regeneration Changes~ DO ~AddXP2DA("PLOT2B")
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut203a",FALSE)~ EXIT
END

CHAIN GORCAMB AES-DECK
~This component must be installed on BG:EE.~
= ~Officer Zelas~
= ~House Tweaks: Not-So-Indestructible Rats~
END
++ ~House Tweaks: Good-Aligned Roleplay Rewards (BG2:EE)~ DO ~ReallyForceSpell(LastTalkedToBy,DECK_XP_DRAIN)~ EXTERN GORCAMB AES-DECK-ACCEPTED
++ ~This component must be installed on BG2:EE.~ DO ~ReallyForceSpell(LastTalkedToBy,DECK_VITALITY_DRAIN)~ EXTERN GORCAMB AES-DECK-ACCEPTED
++ ~House Tweaks: Cloak of Dragomir only decreases stats in daylight~ EXTERN GORCAMB AES-DECK-REFUSED
++ ~House Tweaks: Give Stat Bonuses to EENPCs in BG2 (except Hexxat)~ EXTERN GORCAMB 55

CHAIN GORCAMB AES-DECK-ACCEPTED
~House Tweaks: Useful Plot Items~
DO ~GiveItem("deck",LastTalkedToBy)~
= ~House Tweaks: Faster Troll Unconsciousness~
COPY_TRANS GORCAMB 54

CHAIN GORCAMB AES-DECK-REFUSED
~House Tweaks: Restore Reputation Increase Sound Effect for BG2~
DO ~GiveItem("deck",LastTalkedToBy)~
= ~House Tweaks: Faster Troll Unconsciousness~
COPY_TRANS GORCAMB 54

BEGIN C0DMALTR

CHAIN IF WEIGHT #-1 ~True()~ THEN C0DMALTR a1
~The Party's Reputation Has Increased~ [REPUP]
END
+ ~!Alignment(Lasttalkedtoby(Myself),MASK_EVIL)
OR(2)
Class(Lasttalkedtoby(Myself),PALADIN)
Class(Lasttalkedtoby(Myself),CLERIC_ALL)~ + ~House Tweaks: Race Text Patch~ + a1.1
++ ~House Tweaks: Hoodless Thief Avatars~ DO ~ActionOverride(Player1,ApplyDamage(Myself,50,MAGIC))
ActionOverride(Player1,ApplySpell(Myself,WIZARD_ENERGY_DRAIN))
ActionOverride(Player2,ApplyDamage(Myself,50,MAGIC))
ActionOverride(Player2,ApplySpell(Myself,WIZARD_ENERGY_DRAIN))
ActionOverride(Player3,ApplyDamage(Myself,50,MAGIC))
ActionOverride(Player3,ApplySpell(Myself,WIZARD_ENERGY_DRAIN))
ActionOverride(Player4,ApplyDamage(Myself,50,MAGIC))
ActionOverride(Player4,ApplySpell(Myself,WIZARD_ENERGY_DRAIN))
ActionOverride(Player5,ApplyDamage(Myself,50,MAGIC))
ActionOverride(Player5,ApplySpell(Myself,WIZARD_ENERGY_DRAIN))
ActionOverride(Player6,ApplyDamage(Myself,50,MAGIC))
ActionOverride(Player6,ApplySpell(Myself,WIZARD_ENERGY_DRAIN))~ + a1.1
++ ~House Tweaks: NPC Soundsets for Icewind Dale~ EXIT

CHAIN C0DMALTR a1.1
~This component must be installed on IWD:EE.~
DO ~StartCutsceneMode()
	ReallyForceSpell(LastTrigger,RED_EFFECT)
    CreateVisualEffect("SPPORTAL",[2724.1143])
    CreateVisualEffect("SPPORTAL",[3280.1348])
    CreateVisualEffect("SPPORTAL",[2929.1562])
    CreateVisualEffect("SPPORTAL",[3071.1172])
    CreateVisualEffect("SPPORTAL",[3094.1695])
    Wait(3)
    CreateCreature("uddeath",[2929.1562],E)
    CreateCreature("uddeath",[2724.1143],E)
    CreateCreature("uddeath",[3280.1348],E)
    CreateCreature("uddeath2",[3071.1172],E)
    CreateCreature("uddeath",[3094.1695],E)
	SetGlobal("spawnKnights","AR2402",1)
	EndCutsceneMode()~ EXIT