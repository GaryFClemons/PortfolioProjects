USE GovernmentContractsProject

SELECT contract_transaction_unique_key,	
	parent_award_agency_name,
	current_total_value_of_award,
	solicitation_date,
	period_of_performance_start_date,
	period_of_performance_current_end_date,
	awarding_agency_name,
	awarding_sub_agency_name,
	foreign_funding_description,
	recipient_name,
	recipient_country_name,
	recipient_state_name,
	transaction_description,
	prime_award_base_transaction_description,
	naics_description,
	domestic_or_foreign_entity,
	multi_year_contract,
	CASE 
		WHEN alaskan_native_corporation_owned_firm = 't' THEN 'Native Alaskan Owned'
		WHEN american_indian_owned_business = 't' THEN 'Native American Owned'
		WHEN indian_tribe_federally_recognized = 't' THEN 'Native American Owned'
		WHEN native_hawaiian_organization_owned_firm = 't' THEN 'Native Hawaiian Owned'
		WHEN tribally_owned_firm = 't' THEN 'Native American Owned'
		WHEN subcontinent_asian_asian_indian_american_owned_business = 't' THEN 'Asian American Owned'
		WHEN asian_pacific_american_owned_business = 't' THEN 'Asian American Owned'
		WHEN black_american_owned_business = 't' THEN 'Black American Owned'
		WHEN hispanic_american_owned_business = 't' THEN 'Hispanic American Owned'
		WHEN native_american_owned_business = 't' THEN 'Native American Owned'
		WHEN other_minority_owned_business = 't' THEN 'Other Minority Owned'
		ELSE 'Not Minority Owned'
		END AS minority_business_ownership,
	CASE 
		WHEN woman_owned_business = 't' THEN 'Women Owned'
		WHEN women_owned_small_business = 't' THEN 'Women Owned'
		WHEN economically_disadvantaged_women_owned_small_business = 't' THEN 'Women Owned'
		WHEN joint_venture_women_owned_small_business = 't' THEN 'Women Owned'
		WHEN joint_venture_economic_disadvantaged_women_owned_small_bus = 't' THEN 'Women Owned'
		ELSE 'Not Women Owned'
		END AS women_business_ownership,
	CASE
		WHEN veteran_owned_business = 't' THEN 'Veteran Owned'
		WHEN service_disabled_veteran_owned_business = 't' THEN 'Veteran Owned'
		ELSE 'Not Veteran Owned'
		END AS veteran_business_ownership,
	contracting_officers_determination_of_business_size AS business_size,
	organizational_type,
	CASE 
		WHEN for_profit_organization = 't' THEN 'For-Profit'
		WHEN nonprofit_organization = 't' THEN 'Non-Profit'
		WHEN other_not_for_profit_organization = 't' THEN 'Other Not For Profit Organization'
		ELSE 'Not Applicable'
		END AS organization_type
FROM GovernmentContracts
