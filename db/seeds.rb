# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

wrklocs = Wrkloc.create([{ wrkstate: 'AL' }, { wrkstate: 'AK' }, { wrkstate: 'AZ' }, 
{ wrkstate: 'AR' }, { wrkstate: 'CA' }, { wrkstate: 'CO' }, { wrkstate: 'CT' },
{ wrkstate: 'DE' }, { wrkstate: 'FL' }, { wrkstate: 'GA' }, { wrkstate: 'HI' },
{ wrkstate: 'ID' }, { wrkstate: 'IL' }, { wrkstate: 'IN' }, { wrkstate: 'IA' },
{ wrkstate: 'KS' }, { wrkstate: 'KY' }, { wrkstate: 'LA' }, { wrkstate: 'ME' },
{ wrkstate: 'MD' }, { wrkstate: 'MA' }, { wrkstate: 'MI' }, { wrkstate: 'MN' },
{ wrkstate: 'MS' }, { wrkstate: 'MO' }, { wrkstate: 'MT' }, { wrkstate: 'NE' },
{ wrkstate: 'NV' }, { wrkstate: 'NH' }, { wrkstate: 'NJ' }, { wrkstate: 'NM' },
{ wrkstate: 'NY' }, { wrkstate: 'NC' }, { wrkstate: 'ND' }, { wrkstate: 'OH' },
{ wrkstate: 'OK' }, { wrkstate: 'OR' }, { wrkstate: 'PA' }, { wrkstate: 'RI' },
{ wrkstate: 'SC' }, { wrkstate: 'SD' }, { wrkstate: 'TN' }, { wrkstate: 'TX' },
{ wrkstate: 'UT' }, { wrkstate: 'VT' }, { wrkstate: 'VA' }, { wrkstate: 'WA' },
{ wrkstate: 'WV' }, { wrkstate: 'WI' }, { wrkstate: 'WY' }])

positions = Position.create([{ pos_name: 'PM' }, { pos_name: 'TC' }, { pos_name: 'DM' }])


