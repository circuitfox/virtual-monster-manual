# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  name: 'admin',
  email: 'admin@example.com',
  password: "adminpass",
  admin: true,
  password_reset: true
)

bulette = Creature.create(#1
  name: 'Bulette',
  type: 'monstrosity',
  size: 'large',
  alignment: 'unaligned',
  ac: 17,
  ac_type: 'natural armor',
  hp: 94,
  hp_dice: '9d10 + 45',
  speed: 40,
  swim: 0,
  burrow: 40,
  climb: 0,
  fly: 0,
  strength: 19,
  dexterity: 11,
  constitution: 21,
  intellect: 2,
  wisdom: 10,
  charisma: 5,
  str_saving: 4,
  dex_saving: 0,
  con_saving: 5,
  int_saving: -4,
  wis_saving: 0,
  chr_saving: -3,
  perception: 6,
  blindsight: 0,
  darkvision: 60,
  tremorsense: 60,
  truesight: 0,
  challenge: 1800,
)

Ability.create(
  creature_id: bulette.id,
  name: 'Standing Leap',
  description: 'The bulette\'s long jump is up to 30 feet and its
  high jump is up to 15 feet, with or without a running start.',
)

CreatureAction.create(
  creature_id: bulette.id,
  name: 'Bite',
  damage_dice: '4d12 + 4',
  description: 'Melee weapon attack, +7 to hit, one target, piercing damage',
  range: 5 
)

CreatureAction.create(
  creature_id: bulette.id,
  name: 'Deadly Leap',
  damage_dice: '3d6 + 4',
  description: ' If the bulette jumps at least 15 feet as part of
  its movement, it can then use this action to land on its feet
  in a space that contains one or more other creatures. Each of
  those creatures must succeed on a DC 16 Strength or Dexterity
  saving throw (target\'s choice) or be knocked prone and take
  14 (3d6 + 4) bludgeoning damage plus 14 (3d6 + 4) slashing
  damage. On a successful save, the creature takes only half
  the damage , isn\'t knocked prone, and is pushed 5 feet out of
  the bulette\'s space into an unoccupied space of the creature\'s
  choice. If no unoccupied space is with in range , the creature
  instead falls prone in the bulette\'s space. ',
  range: 5 
)

lich = Creature.create(#2
  name: 'Lich',
  type: 'undead',
  size: 'medium',
  alignment: 'any evil',
  ac: 17,
  ac_type: 'Natural amor',
  hp: 135,
  hp_dice: '18d8 + 54',
  speed: 30,
  swim: 0,
  burrow: 0,
  climb: 0,
  fly: 0,
  strength: 11,
  dexterity: 16,
  constitution: 16,
  intellect: 20,
  wisdom: 14,
  charisma: 16,
  str_saving: 0,
  dex_saving: 3,
  con_saving: 10,
  int_saving: 12,
  wis_saving: 9,
  chr_saving: 3,
  perception: 19,
  blindsight: 0,
  darkvision: 0,
  tremorsense: 0,
  truesight: 120,
  challenge: 33000,
)

Ability.create(
  creature_id: lich.id,
  name: 'Legendary Resistance (3/Day)',
  description: 'If the lich fails a saving throw, it
  can choose to succeed instead.',
)

Ability.create(
  creature_id: lich.id,
  name: 'Rejuvination',
  description: 'If it has a phylactery, a destroyed lich gains
  a new body in 1d10 days, regaining all its hit points and
  becoming active again . The new body appears within 5 feet of
  the phylactery.',
)

CreatureAction.create(
  creature_id: lich.id,
  name: 'Paralyzing Touch',
  damage_dice: '3d6',
  description: 'Melee Spell Attack: + 12 to hit, reach 5 ft., one
  creature. Hit: 10 (3d6) cold damage. The target must succeed
  on a DC 18 Constitution saving th row or be paralyzed for 1
  minute. The target can repeat the saving th row at the end of
  each of its turns, ending the effect on itself on a success.',
  range: 5 
)

CreatureAction.create(
  creature_id: lich.id,
  name: 'Legendary Action',
  damage_dice: '3d6',
  description: 'The lich can take 3 legendary actions, choosing from the
  options below. Only one legendary action option can be used
  at a time and only at the end of another creature\'s turn. The
  lich regains spent legendary actions at the start of its turn.
  Cantrip. The lich casts a cantrip.
  Paralyzing Touch (Costs 2 Actions). The lich uses its
  Paralyzing Touch.
  Frightening Gaze (Costs 2 Actions). The lich fixes its gaze on
  one creature it can see within 10 feet of it. The target must
  succeed on a DC 18 Wisdom saving throw against this magic
  or become frightened for 1 minute. The frightened target can
  repeat the saving throw at the end of each of its turns, ending
  the effect on itself on a success. If a target\'s saving throw is
  successful or the effect ends for it, the target is immune to
  the lich\'s gaze for the next 24 hours.
  Disrupt Life (Costs 3 Actions). Each living creature within 20
  feet of the lich must make a DC 18 Constitution saving throw
  against this magic, taking 21 (6d6) necrotic damage on a
  failed save, or half as much damage on a successful one.',
  range: 5 
)

lich.spells.create(
  name: 'Mage Hand',
  description: 
  '1 action. 30 feet. Components: V S.  A spectral, floating hand appears at a point 
  you choose within range. The hand lasts for the duration or until you dismiss it as an action. 
  The hand vanishes if it is ever more than 30 feet away from you or if you cast this spell again.
  You can use your action to control the hand. You can use the hand to manipulate an object, open 
  an unlocked door or container, stow or retrieve an item from an open container, or pour the 
  contents out of a vial. You can move the hand up to 30 feet each time you use it.
  The hand can’t attack, activate magic items, or carry more than 10 pounds.',
  dice: '0d0',
  level: 0
)

lich.spells.create(
  name: 'Prestidigitation',
  description: 
  '1 action. 10 feet. Components: V S. Up to 1 hour. This spell is a minor magical trick that 
  novice spellcasters use for practice. You create one of the following magical effects 
  within range:
  You create an instantaneous, harmless sensory effect, such as a shower of sparks, 
  a puff of wind, faint musical notes, or an odd odor.
  You instantaneously light or snuff out a candle, a torch, or a small campfire.
  You instantaneously clean or soil an object no larger than 1 cubic foot.
  You chill, warm, or flavor up to 1 cubic foot of nonliving material for 1 hour.
  You make a color, a small mark, or a symbol appear on an object or a surface for 1 hour.
  You create a nonmagical trinket or an illusory image that can fit in your hand and that lasts 
  until the end of your next turn.
  If you cast this spell multiple times, you can have up to three of its non-instantaneous 
  effects active at a time, and you can dismiss such an effect as an action.',
  dice: '0d0',
  level: 0
)

lich.spells.create(
  name: 'Ray of Frost',
  description: 
  '1 action. Range 60 feet. Components: V S. Duration: Instantaneous. A frigid beam of blue-white 
  light streaks toward a creature within range. Make a ranged spell attack against the target. 
  On a hit, it takes 1d8 cold damage, and its speed is reduced by 10 feet until the start of 
  your next turn.',
  dice: '1d8',
  level: 1
)

lich.spells.create(
  name: 'Dectect Magic',
  description: 
  '1 action. Self. Components: V S. Duration: Concentartion, Up to 10 minutes. 
  For the duration, you sense the presence of magic within 30 feet of you. If you sense magic in 
  this way, you can use your action to see a faint aura around any visible creature or object in
  the area that bears magic, and you learn its school of magic, if any.
  The spell can penetrate most barriers, but it is blocked by 1 foot of stone, 1 inch of common 
  metal, a thin sheet of lead, or 3 feet of wood or dirt.',
  dice: '0d0',
  level: 0
)

lich.spells.create(
  name: 'Magic Missle',
  description: 
  '1 action, Range: 120 feet. Components: V S. Instantaneous.
  You create three glowing darts of magical force. Each dart hits a creature of your 
  choice that you can see within range. A dart deals 1d4 + 1 force damage to its target. 
  The darts all strike simultaneously, and you can direct them to hit one creature or several.
  At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, 
  the spell creates one more dart for each slot above 1st.',
  dice: '1d4 + 1',
  level: 1
)

lich.damage_resistances.create(
    name: 'cold'
)

lich.damage_resistances.create(
  name: 'lightning'
)

lich.damage_resistances.create(
  name: 'necrotic'
)

lich.damage_immunities.create(
  name: 'poison'
)

lich.damage_immunities.create(
  name: 'bludgeoning nonmagical'
)

lich.damage_immunities.create(
  name: 'piercing nonmagical'
)

lich.damage_immunities.create(
  name: 'slashing nonmagical'
)

lich.languages.create(
  name: 'common and up to five others'
)

troll = Creature.create(#3
name: 'Troll',
type: 'giant',
size: 'large',
alignment: 'chaotic evil',
ac: 15,
ac_type: 'natural armor',
hp: 84,
hp_dice: '8d10 + 40',
speed: 30,
swim: 0,
burrow: 0,
climb: 0,
fly: 0,
strength: 18,
dexterity: 13,
constitution: 20,
intellect: 7,
wisdom: 9,
charisma: 7,
str_saving: 4,
dex_saving: 2,
con_saving: 5,
int_saving: -2,
wis_saving: -1,
chr_saving: -2,
perception: 1,
blindsight: 0,
darkvision: 60,
tremorsense: 0,
truesight: 0,
challenge: 1800,
)

Ability.create(
  creature_id: troll.id,
  name: 'Keen smell',
  description: 'The troll has advantage on Wisdom (Perception)
  checks that rely on smell',
)

Ability.create(
  creature_id: troll.id,
  name: 'Regeneration',
  description: 'The troll regains 10 hit points at the start of its
  turn. If the troll takes acid or fire damage, this trait doesn\'t
  function at the start of the troll\'s next turn. The troll dies only if
  it starts its turn with 0 hit points and doesn\'t regenerate. ',
)

CreatureAction.create(
  creature_id: troll.id,
  name: 'Multiattack',
  damage_dice: '0d0',
  description: 'The troll makes three attacks: one with its bite
  and two with its claws. ',
  range: 5 
)

CreatureAction.create(
  creature_id: troll.id,
  name: 'Bite',
  damage_dice: '1d6 + 4',
  description: 'Melee Weapon Attack: +7 to hit, reach 5 ft., one target.
  Hit: 7 (1d6 + 4) piercing damage',
  range: 5 
)

CreatureAction.create(
  creature_id: troll.id,
  name: 'Claw',
  damage_dice: '2d6 + 4',
  description: ' Melee Weapon Attack: +7 to hit, reach 5 ft., one target.
  Hit: 11 (2d6 + 4) slashing damage.',
  range: 5 
)

troll.languages.create(
  name: 'Giant'
)

mimic = Creature.create(#4
name: 'Mimic',
type: 'monstrosity',
subtype: 'shapchanger',
size: 'medium',
alignment: 'neutral',
ac: 12,
ac_type: 'natural armor',
hp: 58,
hp_dice: '9d8 + 18',
speed: 15,
swim: 0,
burrow: 0,
climb: 0,
fly: 0,
strength: 17,
dexterity: 12,
constitution: 15,
intellect: 5,
wisdom: 13,
charisma: 8,
str_saving: 3,
dex_saving: 1,
con_saving: 2,
int_saving: -3,
wis_saving: 1,
chr_saving: -1,
perception: 11,
blindsight: 0,
darkvision: 60,
tremorsense: 0,
truesight: 0,
challenge: 450,
)

Ability.create(
  creature_id: mimic.id,
  name: 'Shapechanger',
  description: 'The mimic can use its action to polymorph into
  an object or back into its true, amorphous form. Its statistics
  are the same in each form. Any equipment it is wearing or
  carrying isn\'t transformed. It reverts to its true form if it dies. ',
)

Ability.create(
  creature_id: mimic.id,
  name: 'Adhesive (Object Form Only)',
  description: 'The mimic adheres to anything
  that touches it. A Huge or smaller creature adhered to the
  mimic is also grappled by it (escape DC 13). Ability checks
  made to escape this grapple have disadvantage. ',
)

Ability.create(
  creature_id: mimic.id,
  name: 'False Appearance (Object Form Only)',
  description: 'While the mimic
  remains motionless, it is indistinguishable from an
  ordinary object.',
)

Ability.create(
  creature_id: mimic.id,
  name: 'Grappler',
  description: 'The mimic has advantage on attack rolls against any
  creature grappled by it. 
  ',
)

CreatureAction.create(
  creature_id: mimic.id,
  name: 'Pseudopod',
  damage_dice: '1d8 + 3',
  description: 'Melee Weapon Attack: +5 to hit, reach 5 ft., one
  target. Hit: 7 (1d8 + 3) bludgeoning damage. If the mimic is in
  object form, the target is subjected to its Adhesive trait. ',
  range: 5 
)

CreatureAction.create(
  creature_id: mimic.id,
  name: 'Bite',
  damage_dice: '1d8 + 3',
  description: 'Melee Weapon Attack: +5 to hit, reach 5 ft., one target.
  Hit: 7 (1d8 + 3) piercing damage plus 4 (1d8) acid damage. ',
  range: 5 
)

mimic.damage_immunities.create(
  name: 'acid'
)

mimic.condition_immunities.create(
  name: 'prone'
)

will_o_wisp = Creature.create(#5
name: 'Will-o\'-Wisp',
type: 'undead',
size: 'tiny',
alignment: 'chaotic evil',
ac: 19,
hp: 22,
hp_dice: '9d4',
speed: 0,
swim: 0,
burrow: 0,
climb: 0,
fly: 50,
strength: 1,
dexterity: 28,
constitution: 10,
intellect: 13,
wisdom: 14,
charisma: 11,
str_saving: -5,
dex_saving: 9,
con_saving: 0,
int_saving: 1,
wis_saving: 2,
chr_saving: 0,
perception: 12,
blindsight: 0,
darkvision: 120,
tremorsense: 0,
truesight: 0,
challenge: 450,
)

Ability.create(
  creature_id: will_o_wisp.id,
  name: 'Consume Life',
  description: 'As a bonus action, the will-o\'-wisp can target
  one creature it can see within 5 feet of it that has 0 hit
  points and is still alive. The target must succeed on a DC 10
  Constitution saving throw against this magic or die. If the
  target dies, the will-o\'-wisp regains 10 (3d6) hit points. ',
)

Ability.create(
  creature_id: will_o_wisp.id,
  name: 'Ephemeral',
  description: 'The will-o\'-wisp can\'t wear or carry anything.',
)

Ability.create(
  creature_id: will_o_wisp.id,
  name: 'Incorporeal Movement',
  description: 'The will-o\'-wisp can move through
  other creatures and objects as if they were difficult terrain. It
  takes 5 (1d10) force damage if it ends its turn inside an object.',
)

Ability.create(
  creature_id: will_o_wisp.id,
  name: 'Variable Illumination',
  description: ' The will-o\'-wisp sheds bright light in a 5-
  to 20-foot radius and dim light for an additional number offeet
  equal to the chosen radius. The will-o\'-wisp can alter the radius
  as a bonus action.',
)

CreatureAction.create(
  creature_id: will_o_wisp.id,
  name: 'Shock',
  damage_dice: '2d8',
  description: 'Melee Spell Attack: +4 to hit, reach 5 ft., one creature.
  Hit: 9 (2d8) lightning damage. ',
  range: 5 
)

CreatureAction.create(
  creature_id: will_o_wisp.id,
  name: 'Invisibility',
  damage_dice: '0d0',
  description: 'The will-o\'-wisp and its light magically become
  invisible until it attacks or uses its Life Drain, or until its
  concentration ends (as if concentrating on a spell). ',
  range: 5 
)

will_o_wisp.languages.create(
  name: 'the languaes it knew in life'
)

will_o_wisp.damage_immunities.create(
  name: 'lightning'
)

will_o_wisp.damage_immunities.create(
  name: 'poison'
)

will_o_wisp.damage_resistances.create(
  name: 'acid'
)

will_o_wisp.damage_resistances.create(
  name: 'cold'
)

will_o_wisp.damage_resistances.create(
  name: 'fire'
)

will_o_wisp.damage_resistances.create(
  name: 'nectotic'
)

will_o_wisp.damage_resistances.create(
  name: 'thunder'
)

will_o_wisp.damage_resistances.create(
  name: 'bludgeoning from nonmagical weapons'
)

will_o_wisp.damage_resistances.create(
  name: 'piercing from nonmagical weapons'
)

will_o_wisp.damage_resistances.create(
  name: ' slashing from nonmagical weapons'
)

will_o_wisp.condition_immunities.create(
  name: 'exhaustion'
)

will_o_wisp.condition_immunities.create(
  name: 'grappled'
)

will_o_wisp.condition_immunities.create(
  name: 'paralyzed'
)

will_o_wisp.condition_immunities.create(
  name: 'poisoned'
)

will_o_wisp.condition_immunities.create(
  name: 'prone'
)

will_o_wisp.condition_immunities.create(
  name: 'restrained'
)

will_o_wisp.condition_immunities.create(
  name: 'unconscious'
)
