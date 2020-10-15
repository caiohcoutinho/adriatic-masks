-- planning npc creation

INSERT INTO public.npc(
		/*id, -- nextval */
		name,
		gender,
		nationality,
		age,
		nickname,
		skin,
		eyes,
		hair,
		neighbourhood,
		physical,
		social,
		mental,
		family,
		home,
		instinct,
		oath,
		oath_nature,
		seed_nickname,
		seed_age,
		seed_eyes,
		seed_hair,
		seed_neighborhood,
		seed_physical,
		seed_social,
		seed_mental,
		seed_instinct,
		seed_oath,
		seed_oath_nature,
		notes,
		wealth,
		health,
		max_health,
		ressonance,
		description,
		alive,
		sick,
		hospitalized,
		story
	) VALUES (
		'NEW NPC', /* name, */
		?, /* gender, */
		?, /* nationality, */
		?, /* age, */
		?, /* nickname, */
		?, /* skin, */
		?, /* eyes, */
		?, /* hair, */
		?, /* neighbourhood, */
		?, /* physical, */
		?, /* social, */
		?, /* mental, */
		?, /* family, */
		?, /* home, */
		?, /* instinct, */
		?, /* oath, */
		?, /* oath_nature, */
		?, /* seed_nickname, */
		?, /* seed_age, */
		?, /* seed_eyes, */
		?, /* seed_hair, */
		?, /* seed_neighborhood, */
		?, /* seed_physical, */
		?, /* seed_social, */
		?, /* seed_mental, */
		?, /* seed_instinct, */
		?, /* seed_oath, */
		?, /* seed_oath_nature, */
		?, /* notes, */
		?, /* wealth, */
		?, /* health, */
		?, /* max_health, */
		?, /* ressonance, */
		?, /* description, */
		?, /* alive, */
		?, /* sick, */
		?, /* hospitalized, */
		? /* story */
	);