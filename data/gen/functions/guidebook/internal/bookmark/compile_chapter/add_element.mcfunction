$data modify storage gen:guidebook compile_chapter.elements append value '{"text":"- $(name)\\n","color":"blue","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger gen.guidebook set $(trigger)"}}'
$data modify storage gen:guidebook compile_chapter.buffer set value '$(buffer),{"storage":"gen:guidebook","nbt":"compile_chapter.elements[$(index)]","interpret":true}'