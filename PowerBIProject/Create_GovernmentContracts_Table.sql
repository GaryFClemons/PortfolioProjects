USE [GovernmentContractsProject]
GO
/****** Object:  Table [dbo].[GovernmentContracts]    Script Date: 11/29/2024 7:25:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GovernmentContracts](
	[GovernmentContractID] [bigint] IDENTITY(1,1) NOT NULL,
	[contract_transaction_unique_key] [varchar](max) NOT NULL,
	[contract_award_unique_key] [varchar](max) NOT NULL,
	[award_id_piid] [varchar](max) NOT NULL,
	[modification_number] [varchar](max) NOT NULL,
	[transaction_number] [varchar](max) NOT NULL,
	[parent_award_agency_id] [varchar](max) NOT NULL,
	[parent_award_agency_name] [varchar](max) NOT NULL,
	[parent_award_id_piid] [varchar](max) NOT NULL,
	[parent_award_modification_number] [varchar](max) NOT NULL,
	[federal_action_obligation] [varchar](max) NOT NULL,
	[total_dollars_obligated] [varchar](max) NOT NULL,
	[total_outlayed_amount_for_overall_award] [varchar](max) NOT NULL,
	[base_and_exercised_options_value] [varchar](max) NOT NULL,
	[current_total_value_of_award] [varchar](max) NOT NULL,
	[base_and_all_options_value] [varchar](max) NOT NULL,
	[potential_total_value_of_award] [varchar](max) NOT NULL,
	[disaster_emergency_fund_codes_for_overall_award] [varchar](max) NOT NULL,
	[outlayed_amount_from_COVID-19_supplementals_for_overall_award] [varchar](max) NOT NULL,
	[obligated_amount_from_COVID-19_supplementals_for_overall_award] [varchar](max) NOT NULL,
	[outlayed_amount_from_IIJA_supplemental_for_overall_award] [varchar](max) NOT NULL,
	[obligated_amount_from_IIJA_supplemental_for_overall_award] [varchar](max) NOT NULL,
	[action_date] [varchar](max) NOT NULL,
	[action_date_fiscal_year] [varchar](max) NOT NULL,
	[period_of_performance_start_date] [varchar](max) NOT NULL,
	[period_of_performance_current_end_date] [varchar](max) NOT NULL,
	[period_of_performance_potential_end_date] [varchar](max) NOT NULL,
	[ordering_period_end_date] [varchar](max) NOT NULL,
	[solicitation_date] [varchar](max) NOT NULL,
	[awarding_agency_code] [varchar](max) NOT NULL,
	[awarding_agency_name] [varchar](max) NOT NULL,
	[awarding_sub_agency_code] [varchar](max) NOT NULL,
	[awarding_sub_agency_name] [varchar](max) NOT NULL,
	[awarding_office_code] [varchar](max) NOT NULL,
	[awarding_office_name] [varchar](max) NOT NULL,
	[funding_agency_code] [varchar](max) NOT NULL,
	[funding_agency_name] [varchar](max) NOT NULL,
	[funding_sub_agency_code] [varchar](max) NOT NULL,
	[funding_sub_agency_name] [varchar](max) NOT NULL,
	[funding_office_code] [varchar](max) NOT NULL,
	[funding_office_name] [varchar](max) NOT NULL,
	[treasury_accounts_funding_this_award] [varchar](max) NOT NULL,
	[federal_accounts_funding_this_award] [varchar](max) NOT NULL,
	[object_classes_funding_this_award] [varchar](max) NOT NULL,
	[program_activities_funding_this_award] [varchar](max) NOT NULL,
	[foreign_funding] [varchar](max) NOT NULL,
	[foreign_funding_description] [varchar](max) NOT NULL,
	[sam_exception] [varchar](max) NOT NULL,
	[sam_exception_description] [varchar](max) NOT NULL,
	[recipient_uei] [varchar](max) NOT NULL,
	[recipient_duns] [varchar](max) NOT NULL,
	[recipient_name] [varchar](max) NOT NULL,
	[recipient_name_raw] [varchar](max) NOT NULL,
	[recipient_doing_business_as_name] [varchar](max) NOT NULL,
	[cage_code] [varchar](max) NOT NULL,
	[recipient_parent_uei] [varchar](max) NOT NULL,
	[recipient_parent_duns] [varchar](max) NOT NULL,
	[recipient_parent_name] [varchar](max) NOT NULL,
	[recipient_parent_name_raw] [varchar](max) NOT NULL,
	[recipient_country_code] [varchar](max) NOT NULL,
	[recipient_country_name] [varchar](max) NOT NULL,
	[recipient_address_line_1] [varchar](max) NOT NULL,
	[recipient_address_line_2] [varchar](max) NOT NULL,
	[recipient_city_name] [varchar](max) NOT NULL,
	[prime_award_transaction_recipient_county_fips_code] [varchar](max) NOT NULL,
	[recipient_county_name] [varchar](max) NOT NULL,
	[prime_award_transaction_recipient_state_fips_code] [varchar](max) NOT NULL,
	[recipient_state_code] [varchar](max) NOT NULL,
	[recipient_state_name] [varchar](max) NOT NULL,
	[recipient_zip_4_code] [varchar](max) NOT NULL,
	[prime_award_transaction_recipient_cd_original] [varchar](max) NOT NULL,
	[prime_award_transaction_recipient_cd_current] [varchar](max) NOT NULL,
	[recipient_phone_number] [varchar](max) NOT NULL,
	[recipient_fax_number] [varchar](max) NOT NULL,
	[primary_place_of_performance_country_code] [varchar](max) NOT NULL,
	[primary_place_of_performance_country_name] [varchar](max) NOT NULL,
	[primary_place_of_performance_city_name] [varchar](max) NOT NULL,
	[prime_award_transaction_place_of_performance_county_fips_code] [varchar](max) NOT NULL,
	[primary_place_of_performance_county_name] [varchar](max) NOT NULL,
	[prime_award_transaction_place_of_performance_state_fips_code] [varchar](max) NOT NULL,
	[primary_place_of_performance_state_code] [varchar](max) NOT NULL,
	[primary_place_of_performance_state_name] [varchar](max) NOT NULL,
	[primary_place_of_performance_zip_4] [varchar](max) NOT NULL,
	[prime_award_transaction_place_of_performance_cd_original] [varchar](max) NOT NULL,
	[prime_award_transaction_place_of_performance_cd_current] [varchar](max) NOT NULL,
	[award_or_idv_flag] [varchar](max) NOT NULL,
	[award_type_code] [varchar](max) NOT NULL,
	[award_type] [varchar](max) NOT NULL,
	[idv_type_code] [varchar](max) NOT NULL,
	[idv_type] [varchar](max) NOT NULL,
	[multiple_or_single_award_idv_code] [varchar](max) NOT NULL,
	[multiple_or_single_award_idv] [varchar](max) NOT NULL,
	[type_of_idc_code] [varchar](max) NOT NULL,
	[type_of_idc] [varchar](max) NOT NULL,
	[type_of_contract_pricing_code] [varchar](max) NOT NULL,
	[type_of_contract_pricing] [varchar](max) NOT NULL,
	[transaction_description] [varchar](max) NOT NULL,
	[prime_award_base_transaction_description] [varchar](max) NOT NULL,
	[action_type_code] [varchar](max) NOT NULL,
	[action_type] [varchar](max) NOT NULL,
	[solicitation_identifier] [varchar](max) NOT NULL,
	[number_of_actions] [varchar](max) NOT NULL,
	[inherently_governmental_functions] [varchar](max) NOT NULL,
	[inherently_governmental_functions_description] [varchar](max) NOT NULL,
	[product_or_service_code] [varchar](max) NOT NULL,
	[product_or_service_code_description] [varchar](max) NOT NULL,
	[contract_bundling_code] [varchar](max) NOT NULL,
	[contract_bundling] [varchar](max) NOT NULL,
	[dod_claimant_program_code] [varchar](max) NOT NULL,
	[dod_claimant_program_description] [varchar](max) NOT NULL,
	[naics_code] [varchar](max) NOT NULL,
	[naics_description] [varchar](max) NOT NULL,
	[recovered_materials_sustainability_code] [varchar](max) NOT NULL,
	[recovered_materials_sustainability] [varchar](max) NOT NULL,
	[domestic_or_foreign_entity_code] [varchar](max) NOT NULL,
	[domestic_or_foreign_entity] [varchar](max) NOT NULL,
	[dod_acquisition_program_code] [varchar](max) NOT NULL,
	[dod_acquisition_program_description] [varchar](max) NOT NULL,
	[information_technology_commercial_item_category_code] [varchar](max) NOT NULL,
	[information_technology_commercial_item_category] [varchar](max) NOT NULL,
	[epa_designated_product_code] [varchar](max) NOT NULL,
	[epa_designated_product] [varchar](max) NOT NULL,
	[country_of_product_or_service_origin_code] [varchar](max) NOT NULL,
	[country_of_product_or_service_origin] [varchar](max) NOT NULL,
	[place_of_manufacture_code] [varchar](max) NOT NULL,
	[place_of_manufacture] [varchar](max) NOT NULL,
	[subcontracting_plan_code] [varchar](max) NOT NULL,
	[subcontracting_plan] [varchar](max) NOT NULL,
	[extent_competed_code] [varchar](max) NOT NULL,
	[extent_competed] [varchar](max) NOT NULL,
	[solicitation_procedures_code] [varchar](max) NOT NULL,
	[solicitation_procedures] [varchar](max) NOT NULL,
	[type_of_set_aside_code] [varchar](max) NOT NULL,
	[type_of_set_aside] [varchar](max) NOT NULL,
	[evaluated_preference_code] [varchar](max) NOT NULL,
	[evaluated_preference] [varchar](max) NOT NULL,
	[research_code] [varchar](max) NOT NULL,
	[research] [varchar](max) NOT NULL,
	[fair_opportunity_limited_sources_code] [varchar](max) NOT NULL,
	[fair_opportunity_limited_sources] [varchar](max) NOT NULL,
	[other_than_full_and_open_competition_code] [varchar](max) NOT NULL,
	[other_than_full_and_open_competition] [varchar](max) NOT NULL,
	[number_of_offers_received] [varchar](max) NOT NULL,
	[commercial_item_acquisition_procedures_code] [varchar](max) NOT NULL,
	[commercial_item_acquisition_procedures] [varchar](max) NOT NULL,
	[small_business_competitiveness_demonstration_program] [varchar](max) NOT NULL,
	[simplified_procedures_for_certain_commercial_items_code] [varchar](max) NOT NULL,
	[simplified_procedures_for_certain_commercial_items] [varchar](max) NOT NULL,
	[a76_fair_act_action_code] [varchar](max) NOT NULL,
	[a76_fair_act_action] [varchar](max) NOT NULL,
	[fed_biz_opps_code] [varchar](max) NOT NULL,
	[fed_biz_opps] [varchar](max) NOT NULL,
	[local_area_set_aside_code] [varchar](max) NOT NULL,
	[local_area_set_aside] [varchar](max) NOT NULL,
	[price_evaluation_adjustment_preference_percent_difference] [varchar](max) NOT NULL,
	[clinger_cohen_act_planning_code] [varchar](max) NOT NULL,
	[clinger_cohen_act_planning] [varchar](max) NOT NULL,
	[materials_supplies_articles_equipment_code] [varchar](max) NOT NULL,
	[materials_supplies_articles_equipment] [varchar](max) NOT NULL,
	[labor_standards_code] [varchar](max) NOT NULL,
	[labor_standards] [varchar](max) NOT NULL,
	[construction_wage_rate_requirements_code] [varchar](max) NOT NULL,
	[construction_wage_rate_requirements] [varchar](max) NOT NULL,
	[interagency_contracting_authority_code] [varchar](max) NOT NULL,
	[interagency_contracting_authority] [varchar](max) NOT NULL,
	[other_statutory_authority] [varchar](max) NOT NULL,
	[program_acronym] [varchar](max) NOT NULL,
	[parent_award_type_code] [varchar](max) NOT NULL,
	[parent_award_type] [varchar](max) NOT NULL,
	[parent_award_single_or_multiple_code] [varchar](max) NOT NULL,
	[parent_award_single_or_multiple] [varchar](max) NOT NULL,
	[major_program] [varchar](max) NOT NULL,
	[national_interest_action_code] [varchar](max) NOT NULL,
	[national_interest_action] [varchar](max) NOT NULL,
	[cost_or_pricing_data_code] [varchar](max) NOT NULL,
	[cost_or_pricing_data] [varchar](max) NOT NULL,
	[cost_accounting_standards_clause_code] [varchar](max) NOT NULL,
	[cost_accounting_standards_clause] [varchar](max) NOT NULL,
	[government_furnished_property_code] [varchar](max) NOT NULL,
	[government_furnished_property] [varchar](max) NOT NULL,
	[sea_transportation_code] [varchar](max) NOT NULL,
	[sea_transportation] [varchar](max) NOT NULL,
	[undefinitized_action_code] [varchar](max) NOT NULL,
	[undefinitized_action] [varchar](max) NOT NULL,
	[consolidated_contract_code] [varchar](max) NOT NULL,
	[consolidated_contract] [varchar](max) NOT NULL,
	[performance_based_service_acquisition_code] [varchar](max) NOT NULL,
	[performance_based_service_acquisition] [varchar](max) NOT NULL,
	[multi_year_contract_code] [varchar](max) NOT NULL,
	[multi_year_contract] [varchar](max) NOT NULL,
	[contract_financing_code] [varchar](max) NOT NULL,
	[contract_financing] [varchar](max) NOT NULL,
	[purchase_card_as_payment_method_code] [varchar](max) NOT NULL,
	[purchase_card_as_payment_method] [varchar](max) NOT NULL,
	[contingency_humanitarian_or_peacekeeping_operation_code] [varchar](max) NOT NULL,
	[contingency_humanitarian_or_peacekeeping_operation] [varchar](max) NOT NULL,
	[alaskan_native_corporation_owned_firm] [varchar](max) NOT NULL,
	[american_indian_owned_business] [varchar](max) NOT NULL,
	[indian_tribe_federally_recognized] [varchar](max) NOT NULL,
	[native_hawaiian_organization_owned_firm] [varchar](max) NOT NULL,
	[tribally_owned_firm] [varchar](max) NOT NULL,
	[veteran_owned_business] [varchar](max) NOT NULL,
	[service_disabled_veteran_owned_business] [varchar](max) NOT NULL,
	[woman_owned_business] [varchar](max) NOT NULL,
	[women_owned_small_business] [varchar](max) NOT NULL,
	[economically_disadvantaged_women_owned_small_business] [varchar](max) NOT NULL,
	[joint_venture_women_owned_small_business] [varchar](max) NOT NULL,
	[joint_venture_economic_disadvantaged_women_owned_small_bus] [varchar](max) NOT NULL,
	[minority_owned_business] [varchar](max) NOT NULL,
	[subcontinent_asian_asian_indian_american_owned_business] [varchar](max) NOT NULL,
	[asian_pacific_american_owned_business] [varchar](max) NOT NULL,
	[black_american_owned_business] [varchar](max) NOT NULL,
	[hispanic_american_owned_business] [varchar](max) NOT NULL,
	[native_american_owned_business] [varchar](max) NOT NULL,
	[other_minority_owned_business] [varchar](max) NOT NULL,
	[contracting_officers_determination_of_business_size] [varchar](max) NOT NULL,
	[contracting_officers_determination_of_business_size_code] [varchar](max) NOT NULL,
	[emerging_small_business] [varchar](max) NOT NULL,
	[community_developed_corporation_owned_firm] [varchar](max) NOT NULL,
	[labor_surplus_area_firm] [varchar](max) NOT NULL,
	[us_federal_government] [varchar](max) NOT NULL,
	[federally_funded_research_and_development_corp] [varchar](max) NOT NULL,
	[federal_agency] [varchar](max) NOT NULL,
	[us_state_government] [varchar](max) NOT NULL,
	[us_local_government] [varchar](max) NOT NULL,
	[city_local_government] [varchar](max) NOT NULL,
	[county_local_government] [varchar](max) NOT NULL,
	[inter_municipal_local_government] [varchar](max) NOT NULL,
	[local_government_owned] [varchar](max) NOT NULL,
	[municipality_local_government] [varchar](max) NOT NULL,
	[school_district_local_government] [varchar](max) NOT NULL,
	[township_local_government] [varchar](max) NOT NULL,
	[us_tribal_government] [varchar](max) NOT NULL,
	[foreign_government] [varchar](max) NOT NULL,
	[organizational_type] [varchar](max) NOT NULL,
	[corporate_entity_not_tax_exempt] [varchar](max) NOT NULL,
	[corporate_entity_tax_exempt] [varchar](max) NOT NULL,
	[partnership_or_limited_liability_partnership] [varchar](max) NOT NULL,
	[sole_proprietorship] [varchar](max) NOT NULL,
	[small_agricultural_cooperative] [varchar](max) NOT NULL,
	[international_organization] [varchar](max) NOT NULL,
	[us_government_entity] [varchar](max) NOT NULL,
	[community_development_corporation] [varchar](max) NOT NULL,
	[domestic_shelter] [varchar](max) NOT NULL,
	[educational_institution] [varchar](max) NOT NULL,
	[foundation] [varchar](max) NOT NULL,
	[hospital_flag] [varchar](max) NOT NULL,
	[manufacturer_of_goods] [varchar](max) NOT NULL,
	[veterinary_hospital] [varchar](max) NOT NULL,
	[hispanic_servicing_institution] [varchar](max) NOT NULL,
	[receives_contracts] [varchar](max) NOT NULL,
	[receives_financial_assistance] [varchar](max) NOT NULL,
	[receives_contracts_and_financial_assistance] [varchar](max) NOT NULL,
	[airport_authority] [varchar](max) NOT NULL,
	[council_of_governments] [varchar](max) NOT NULL,
	[housing_authorities_public_tribal] [varchar](max) NOT NULL,
	[interstate_entity] [varchar](max) NOT NULL,
	[planning_commission] [varchar](max) NOT NULL,
	[port_authority] [varchar](max) NOT NULL,
	[transit_authority] [varchar](max) NOT NULL,
	[subchapter_scorporation] [varchar](max) NOT NULL,
	[limited_liability_corporation] [varchar](max) NOT NULL,
	[foreign_owned] [varchar](max) NOT NULL,
	[for_profit_organization] [varchar](max) NOT NULL,
	[nonprofit_organization] [varchar](max) NOT NULL,
	[other_not_for_profit_organization] [varchar](max) NOT NULL,
	[the_ability_one_program] [varchar](max) NOT NULL,
	[private_university_or_college] [varchar](max) NOT NULL,
	[state_controlled_institution_of_higher_learning] [varchar](max) NOT NULL,
	[1862_land_grant_college] [varchar](max) NOT NULL,
	[1890_land_grant_college] [varchar](max) NOT NULL,
	[1994_land_grant_college] [varchar](max) NOT NULL,
	[minority_institution] [varchar](max) NOT NULL,
	[historically_black_college] [varchar](max) NOT NULL,
	[tribal_college] [varchar](max) NOT NULL,
	[alaskan_native_servicing_institution] [varchar](max) NOT NULL,
	[native_hawaiian_servicing_institution] [varchar](max) NOT NULL,
	[school_of_forestry] [varchar](max) NOT NULL,
	[veterinary_college] [varchar](max) NOT NULL,
	[dot_certified_disadvantage] [varchar](max) NOT NULL,
	[self_certified_small_disadvantaged_business] [varchar](max) NOT NULL,
	[small_disadvantaged_business] [varchar](max) NOT NULL,
	[c8a_program_participant] [varchar](max) NOT NULL,
	[historically_underutilized_business_zone_hubzone_firm] [varchar](max) NOT NULL,
	[sba_certified_8a_joint_venture] [varchar](max) NOT NULL,
	[highly_compensated_officer_1_name] [varchar](max) NOT NULL,
	[highly_compensated_officer_1_amount] [varchar](max) NOT NULL,
	[highly_compensated_officer_2_name] [varchar](max) NOT NULL,
	[highly_compensated_officer_2_amount] [varchar](max) NOT NULL,
	[highly_compensated_officer_3_name] [varchar](max) NOT NULL,
	[highly_compensated_officer_3_amount] [varchar](max) NOT NULL,
	[highly_compensated_officer_4_name] [varchar](max) NOT NULL,
	[highly_compensated_officer_4_amount] [varchar](max) NOT NULL,
	[highly_compensated_officer_5_name] [varchar](max) NOT NULL,
	[highly_compensated_officer_5_amount] [varchar](max) NOT NULL,
	[usaspending_permalink] [varchar](max) NOT NULL,
	[initial_report_date] [varchar](max) NOT NULL,
	[last_modified_date] [varchar](max) NOT NULL,

 CONSTRAINT [PK_GovernmentContracts] PRIMARY KEY CLUSTERED 
(
	[GovernmentContractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
